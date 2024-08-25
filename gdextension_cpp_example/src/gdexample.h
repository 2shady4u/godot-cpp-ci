#ifndef GDEXAMPLE_CLASS_H
#define GDEXAMPLE_CLASS_H

#include <godot_cpp/variant/utility_functions.hpp>

#include <godot_cpp/core/binder_common.hpp>
#include <godot_cpp/core/class_db.hpp>

#include <godot_cpp/classes/sprite2d.hpp>

namespace godot
{

    class GDExample : public Sprite2D
    {
        GDCLASS(GDExample, Sprite2D)

    private:
        float time_passed;

    protected:
        static void _bind_methods();

    public:
        GDExample();
        ~GDExample();

        void _init(); // our initializer called by Godot

        void _process(float delta);
    };

}

#endif // ! GDEXAMPLE_CLASS_H