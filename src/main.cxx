#include <format>
#include <iostream>
#include <bit>

int main(int argc, char** argv)
{
	const char* endianness = std::endian::native == std::endian::little ? "little" : "big";
	std::cout << std::format("{}, {}! sizeof(void*) == {}. Endianness == {}", "Hello", "world", sizeof(void*), endianness) << std::endl;
	return 0;
}