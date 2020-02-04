import React, { Component } from 'react';
import './App.css';
import Header from './components/Header'
import ToggledImage from './components/ToggledImage'
import ImageSearch from './components/ImageSearch'
import ImageContainer from './components/ImageContainer'
// import AddImageForm from './components/AddImageForm'

const BASE_URL = 'http://localhost:3000/images'

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
        toggledImage: [image]
      })
  }
  
  updateSearchTerm = searchTerm => {
    this.setState({ searchTerm })
  }

  filteredImages = () => {
    const { allImages, searchTerm } = this.state
    return allImages.filter(image => {
      return (image.title
        .toLowerCase()
        .includes(searchTerm)
      ) || (image.explanation
        .toLowerCase()
        .includes(searchTerm)
      ) || (image.date
        .toString()
        .includes(searchTerm)
      )
    })
  }

  render(){
    return (
      <div className="App">
        <Header />
        
        <ToggledImage 
        toggledImage={this.state.toggledImage}
        imageAction={this.expandImage}
        />
        <div className="images">
          <ImageSearch 
          searchTerm={this.state.searchTerm}
          updateSearchTerm={this.updateSearchTerm}
          />

          <ImageContainer 
          allImages={this.filteredImages()}
          imageAction={this.expandImage} 
          />
        </div>

      </div>
    )
  }
  
}

export default App;
