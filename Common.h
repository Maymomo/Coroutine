#pragma once

#include <mutex>

template <class T>
class NoCopyAndMove {
public:
	T &operator=(const T &other) = delete;
	T &operator=(T &&other) = delete;
};

using  OsLock = std::mutex;
