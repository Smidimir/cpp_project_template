from conan import ConanFile
from conan.tools.cmake import CMakeToolchain, CMake

# ref: https://docs.conan.io/2/reference/conanfile.html

class ConanApp(ConanFile):
    name = "conan_app"
    version = "0.1"
    package_type = "application"

    settings = "os", "compiler", "build_type", "arch"

    def generate(self):
        cmake = CMakeToolchain(self)
        cmake.user_presets_path = False
        cmake.generate()

    def build(self):
        print(self.build_folder)
        cmake = CMake(self)
        cmake.configure()
        cmake.build()
