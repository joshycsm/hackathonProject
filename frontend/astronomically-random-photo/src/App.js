import React, { Component } from 'react';
import './App.css';
import Header from './components/Header'
import ToggledImage from './components/ToggledImage'
import ImageSearch from './components/ImageSearch'
import ImageContainer from './components/ImageContainer'
// import AddImageForm from './components/AddImageForm'

const BASE_URL = 'https://api.nasa.gov/planetary/apod?api_key=Y8DYngjtyF9bVRPqWpmyjYihBeFnVYvdOLyWcE0v&count=5'

class App extends Component {
  state = {
    allImages: [],
    toggledImage: [],
    searchTerm: ""
  }

  componentDidMount() {
    fetch(BASE_URL)
      .then(response => response.json())
      .then(allImages => this.setState({ allImages }))
  }

  expandImage = image => {
      this.setState({
        toggledIamge: [...this.state.toggledImage, image]
      })
    }
  

  // updateSearchTerm = searchTerm => {
  //   this.setState({ searchTerm })
  // }

  



  render(){
    return (
      <div className="App">
        <Header />
        <ToggledImage />
        <ImageSearch />
        <ImageContainer 
        allImages={this.state.allImages}
        imageAction={this.expandImage} 
        />
      </div>
    )
  }
  
}

export default App;
