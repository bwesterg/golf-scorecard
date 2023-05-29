import React from 'react';

export default function ScorecardItem({player_name, tee, hole_1, hole_2, hole_3, hole_4, hole_5, hole_6, hole_7, hole_8, hole_9, hole_10, hole_11, hole_12, hole_13, hole_14, hole_15, hole_16, hole_17, hole_18}){
    return(
        <li>
            <h2>{player_name}, playing {tee.name}, for {tee.yardage} yards</h2>
            <h4>Hole 1 {hole_1}</h4>
            <h4>Hole 2 {hole_2}</h4>
            <h4>Hole 3 {hole_3}</h4>
            <h4>Hole 4 {hole_4}</h4>
            <h4>Hole 5 {hole_5}</h4>
            <h4>Hole 6 {hole_6}</h4>
            <h4>Hole 7 {hole_7}</h4>
            <h4>Hole 8 {hole_8}</h4>
            <h4>Hole 9 {hole_9}</h4>
            <h4>Hole 10 {hole_10}</h4>
            <h4>Hole 11 {hole_11}</h4>
            <h4>Hole 12 {hole_12}</h4>
            <h4>Hole 13 {hole_13}</h4>
            <h4>Hole 14 {hole_14}</h4>
            <h4>Hole 15 {hole_15}</h4>
            <h4>Hole 16 {hole_16}</h4>
            <h4>Hole 17 {hole_17}</h4>
            <h4>Hole 18 {hole_18}</h4>


        </li>
    )
}