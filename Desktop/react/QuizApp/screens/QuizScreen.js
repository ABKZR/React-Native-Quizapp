import React from 'react';
import {
  AppRegistry,
  View,
  Text,
  StyleSheet,
  ScrollView,
  TouchableOpacity,
  ActivityIndicator,
} from 'react-native';
const apiURL =
  'https://opentdb.com/api.php?amount=10&category=18&type=multiple';
export default class QuizScreen extends React.Component {
  componentDidMount() {
    this.getQuizData();
  }
  state = {
    currentQuestion: 0,
    isLoaded: false,
    questions: [],
    options: [],
    correctAnswers: '',
    score: 0,
  };
  async getQuizData() {
    try {
      const response = await fetch(apiURL);
      const json = await response.json();
      const option = json.results[this.state.currentQuestion].incorrect_answers;
      const correctAnswer =
        json.results[this.state.currentQuestion].correct_answer;
      option.push(correctAnswer);
      this.setState({
        questions: json.results,
        options: option,
        correctAnswers: correctAnswer,
      });
    } catch (error) {
      console.log(error);
    } finally {
      this.setState({isLoaded: true});
    }
  }

  checkAnswers(selectedAnswer) {
    if (this.state.correctAnswers == selectedAnswer) {
      let score = this.state.score;
      score += 1;
      this.setState({
        score,
      });
    }
    //changing Questions
    let currentQuestion = this.state.currentQuestion;
    currentQuestion += 1;
    if (currentQuestion <= 9) {
      const options = this.state.questions[currentQuestion].incorrect_answers;
      const correctAnswers =
        this.state.questions[currentQuestion].correct_answer;
      options.push(correctAnswers);
      this.setState({
        currentQuestion,
        options,
        correctAnswers,
      });
    } else {
      this.props.navigation.navigate('Result', {
        score: this.state.score,
      });
    }
  }
  render() {
    if (this.state.isLoaded) {
      return (
        <ScrollView style={styles.container}>
          <View style={styles.questionContainer}>
            <Text style={styles.question}>
              Q. {this.state.questions[this.state.currentQuestion].question}
            </Text>
          </View>
          <View style={styles.answerContainer}>
            <TouchableOpacity
              onPress={() => {
                this.checkAnswers(this.state.options[0]);
              }}
              style={styles.btn}>
              <Text style={styles.answer}>{this.state.options[0]}</Text>
            </TouchableOpacity>
            <TouchableOpacity
              onPress={() => {
                this.checkAnswers(this.state.options[1]);
              }}
              style={styles.btn}>
              <Text style={styles.answer}>{this.state.options[1]}</Text>
            </TouchableOpacity>
            <TouchableOpacity
              onPress={() => {
                this.checkAnswers(this.state.options[2]);
              }}
              style={styles.btn}>
              <Text style={styles.answer}>{this.state.options[2]}</Text>
            </TouchableOpacity>
            <TouchableOpacity
              onPress={() => {
                this.checkAnswers(this.state.options[3]);
              }}
              style={styles.btn}>
              <Text style={styles.answer}>{this.state.options[3]}</Text>
            </TouchableOpacity>
          </View>
        </ScrollView>
      );
    } else {
      return (
        <View style={styles.containerIndecator}>
          <ActivityIndicator size={50} />
        </View>
      );
    }
  }
}

const styles = StyleSheet.create({
  containerIndecator: {
    flex: 1,
    backgroundColor: '#301b75',
    justifyContent: 'center',
    alignItems: 'center',
  },
  container: {
    flex: 1,
    backgroundColor: '#301b75',
  },
  btn: {
    backgroundColor: '#602bc2',
    padding: 20,
    marginVertical: 10,
    borderRadius: 8,
  },
  answerContainer: {
    marginHorizontal: 20,
    marginVertical: 10,
  },
  questionContainer: {
    marginHorizontal: 30,
    marginVertical: 20,
  },
  question: {
    fontSize: 30,
    color: '#fff',
    textAlign: 'center',
  },
  answer: {
    fontSize: 18,
    color: '#fff',
  },
});
