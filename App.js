import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, View } from 'react-native';
import HelloWorld from './components/HelloWorld';

export default function App() {
  return (
    <View style={styles.container}>
      <h6>React Native Application</h6>
      <HelloWorld/>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
