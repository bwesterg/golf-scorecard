import React from 'react';
import ScorecardItem from './ScorecardItem';

export default function ScorecardContainer({scorecards}){

    // const {scorecards} = props
    const showScorecards = () => {
        return scorecards.map(scorecard => <ScorecardItem key={scorecard.id}{...scorecard}/>)
        //key is just a thing for react to keep up with components when reusing same component over and over. 
        //I'm not really using the key as a prop.  It's just for the virtual DOM to keep up with components.
    }

    return(
        <ul>
            Scorecard Container
            {showScorecards()}
        </ul>
    )
}