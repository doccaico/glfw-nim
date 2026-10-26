### glfw-nim
Bindings for GLFW 3.5.1. Windows only.

#### How to use
```
$ mkdir hello-glfw
$ cd hello-glfw
$ git clone https://github.com/doccaico/glfw-nim.git
```

Add `--path:glfw-nim` to the command line, or include the following in config.nims.

#### config.nims
```
--path: "glfw-nim"
```

#### main.nim
```nim
import glfw

proc main() =
  if glfwInit() != GLFW_TRUE:
    echo "[Error]: Failed to initialize GLFW"
    quit(-1)

  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);

  var window = glfwCreateWindow(640, 480, "Simple example", nil, nil);

  if window == nil:
    echo "Could not build window, exiting..."
    glfwTerminate();
    quit(-1)

  glfwMakeContextCurrent(window);

  glfwSwapInterval(1);

  while glfwWindowShouldClose(window) != GLFW_TRUE:
    glfwSwapBuffers(window);
    glfwPollEvents();

  glfwTerminate();

main()
```

#### Build and Run
```sh
$ nim --path:glfw-nim r main.nim
# or
$ nim --path:.. r examples\basic.nim
# if you are using MSVC (cl.exe)
$ nim --cc:vcc --path:.. r examples\basic.nim
```
