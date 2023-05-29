import React, {Component} from 'react';
import './App.css';
import ScorecardContainer from './components/ScorecardContainer';
const scorecardsUrl = "http://localhost:3000/scorecards"

class App extends Component {

  state = {
    scorecards: []
  }

  componentDidMount(){
    this.getScorecards();
  }

  getScorecards = () => {
    fetch(scorecardsUrl)
      .then(response => response.json())
      .then(console.log(scorecardsUrl))
      .then(scorecards => this.setState({scorecards}))
  }

  render(){

    return (
      <div className="App">
        <h1>Golf Score App</h1>
        <ScorecardContainer scorecards={this.state.scorecards} />
      </div>
    );
  }
}

export default App;
