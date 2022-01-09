// Structured Gym Regimen

//Create structure named Exercise that will model real-life exercises
struct Exercise {
  //Defining properties
  var name : String
  var muscleGroups : [String]
  var reps : Int
  var sets : Int
  var totalReps : Int

  //Creating init() method
  init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.sets = sets
    self.reps = reps
    self.totalReps = self.sets * self.reps
  }
}

//Creating first instance of the structure
var pushUp = Exercise(name: "Push up", muscleGroups:  ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)

// Creating the second structure named Regimen
//This structure will model a regimen that keeps track of our day’s exercises.
struct Regimen {
  var dayOfWeek : String
  var exercises : [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]){
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  func printExercisePlan(){
    print("Today is \(self.dayOfWeek) and the plan is to: ")
    //Loops over array to print out Exercise Plan
    for exercise in self.exercises{
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
      print("That's a total of \(exercise.totalReps) \(exercise.name)s.")
    }
  }
}

//Creating instance of Regimen
var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])

//Calls .printExercisePlan()
mondayRegimen.printExercisePlan()

