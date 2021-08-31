import React from 'react';
import { View, Text, ActivityIndicator,StyleSheet, TouchableOpacity } from 'react-native';

export default class HomeScreen extends React.Component{
  render(){
    return(
      <View style={styles.container}>
        <TouchableOpacity 
        onPress={()=>{this.props.navigation.navigate("Quiz")}}
        style={styles.btn}
        >
          <Text style={styles.btnText}>Start Quiz</Text>
        </TouchableOpacity>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container:{
    flex:1,
    backgroundColor:"#301b75",
    justifyContent:'center',
    alignItems:'center',
  },
  btn:{
    backgroundColor:"#663fe8",
    paddingHorizontal:20,
    paddingVertical:10,
    borderRadius:10
  },
  btnText:{
    color:"#fff",
    fontSize:18
  }
})