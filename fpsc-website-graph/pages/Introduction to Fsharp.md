tags:: Fsharp, technical, video, meetup
presenter:: [[Andre Dublin]] 
date:: 2017-02-28

- ![Introduction to Fsharp](../assets/IntroductionToFsharp.jpg)
-
- With a pre-recorded presentation, we explore the unique features that [[F Sharp]] language offers to functional developers:  functions, composition, piping, discriminated unions, active patterns and computation expressions.
-
- Followup and Q&A is by domain expert Andre Dublin who elaborates on the details and demonstrates the F# IDE's type discrimination features.
-
- This presentation is technical and intended for developers and students. 
  
  * [video presentation](https://youtu.be/wcvd8WDBxjE) (YouTube)
  * [[Andre Dublin]] biography 
  
  <iframe id="ytplayer" type="text/html" width="640" height="390"
    src="https://www.youtube.com/embed/wcvd8WDBxjE?autoplay=0&origin=http://functional.sc"  frameborder="0"></iframe>
  
  
  presentation example code:
  
  ```fsharp
  let add a b = a + b
  let increment = add 1
  
  // infers that a and b are ints
  let f a b = a + b
  
  // auto generalization because a and b are generic and must implement the comparision interface
  let max a b = if a > b then a else b
  max 1 2
  max "A" "B"
  let makeTuple a b = (a, b)
  
  type PersonA = {
      Name : string
      Age : int
  }
  
  let person = {
    Name = "Andre"
    Age = 35
  }
  
  //type PersonB = {
  //  Name : string
  //  Age : int
  //}
  
  let updatePersonAge person =
    { person with Age = 35 }
  
  let updatePersonName person =
    { person with Name = "Andre Dublin" }
  
  //let newPerson = updatePersonAge person 36
  //let newPersonB = updatePersonName newPerson "Andre Dublin"
  
  // super simple example of function composition
  let updatePerson = updatePersonAge >> updatePersonName
  let newPerson = updatePerson person
  
  // using an either monad to represent good or bad state
  // see http://fsharpforfunandprofit.com/rop/
  // see https://github.com/fsprojects/Chessie
  // see https://github.com/swlaschin/Railway-Oriented-Programming-Example
  type Result<'TEntity> =
    | Success of 'TEntity
    | Failure of string
  ```
-
- {{embed [[Andre Dublin]]}}