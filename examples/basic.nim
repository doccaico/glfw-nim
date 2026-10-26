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

  glfwMakeContextCurrent(window);

  glfwSwapInterval(1);

  while glfwWindowShouldClose(window) != GLFW_TRUE:
    glfwSwapBuffers(window);
    glfwPollEvents();

  glfwTerminate();

main()
