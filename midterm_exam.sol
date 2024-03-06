// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract GradeContract {
  string studName;
  int256 prelim;
  int256 midterm;
  int256 fin;
  address owner;

  constructor () {
    owner = msg.sender
  }

 modifier onlyOwner() {
require (msg.sender == owner, "not owner");
 _;
}

 modifier validgrade(uint grade) {
  require(grade > 100, "grade must be from 0 to 100");
 }

  function setName()public pure returns (string){
    string name = studName;
  }

  function setPrelimGrade(uint prelimGrade)external onlyOwner validGrade(_prelimGrade){
  prelimgrade = prelim;
  }

  function setMidtermGrade(uint midtermGrade)external onlyOwner validGrade(_midtermGrade){
  midtermgrade = midterm;
  }

  function setFinalGrade(uint finalGrade)external onlyOwnervalidGrade(_finalGrade){
  finalgrade =fin;
  }

  function calculateGrade () external onlyOwner(
    if (prelimGrade >100 && midtermGrade >100 && fianlGrade >100){
      require(prelimGrade <100, "Grade must be from 0 to 100");
        gradeStatus = 1;
    }
    else(
      gradeStatus = 0;
    )
  )

  enum Status {
    Pass,
    Fail
  }




