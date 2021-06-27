import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, View } from 'react-native';
import HelloWorld from './components/HelloWorld';

export default function App() {
  return (
    <View style={styles.container}>
      <h3>React Native Application</h3>
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
