import React from 'react';
import {View} from 'react-native';
import axios from 'axios';

class HelloWorld extends React.Component {
    state = {
        message: null
    };

    componentDidMount() {
        axios.get("http://localhost:4000/")
        .then(response => {
            console.log(response.data.Title);
            this.setState({message: response.data.Title});
        })
        .catch(e => console.log(e))
    }

    render() {
        return (
            <View>
            <h1>{this.state.message} from golang</h1>
            </View>
        )
    }
}

export default HelloWorld