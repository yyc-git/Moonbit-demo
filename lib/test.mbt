type WebGL_ctx

type program

type adapter

type device

type promise

func createProgram(self : WebGL_ctx) -> program = "webgl" "createProgram"

func requestAdapter() -> promise = "webgpu" "requestAdapter"

type handleFunc

func handlePromise(self : promise, handleFunc : handleFunc) = "promise" "handlePromise"

func print_i32(x : Int) = "spectest" "print_i32"

func print_program(x : program) = "spectest" "print_program"

func print_adapter(x : adapter) = "spectest" "print_program"

pub func func1(a : Int) {
  print_i32(a)
}

pub func create(gl : WebGL_ctx) {
  let program = gl.createProgram()
  print_program(program)
}

pub func requestAdapter_() -> promise {
  // let func_ = fn(adapter) { print_program }

  // handlePromise(requestAdapter(), func1)
  requestAdapter()
}

pub func printAdapter(adapter : adapter) {
  print_adapter(adapter)
}

