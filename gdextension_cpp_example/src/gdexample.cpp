#include "gdexample.h"

using namespace godot;

void GDExample::_bind_methods()
{
}

GDExample::GDExample()
{
    // add your initialization here
}

GDExample::~GDExample()
{
    // add your cleanup here
}

void GDExample::_init()
{
    // initialize any variables here
    time_passed = 0.0;
}

void GDExample::_process(float delta)
{
    time_passed += delta;

    Vector2 new_position = Vector2(10.0 + (10.0 * sin(time_passed * 2.0)), 10.0 + (10.0 * cos(time_passed * 1.5)));

    set_position(new_position);
}