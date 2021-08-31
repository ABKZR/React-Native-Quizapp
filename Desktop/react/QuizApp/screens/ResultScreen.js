import React from 'react';
import {View, Text, StyleSheet} from 'react-native';

export default class ResultScreen extends React.Component {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.score}>{this.props.route.params.score} / 10</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#301b75',
  },
  score: {
    color: '#fff',
    fontSize: 50,
  },
});
