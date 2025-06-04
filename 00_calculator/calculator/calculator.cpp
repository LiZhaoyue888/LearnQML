#include "calculator.h"
#include <QDebug>
Calculator::Calculator(QObject* parent):QObject(parent) {}

int Calculator::add(int a, int b)
{
      qDebug() << "C++ add function called with" << a << "and" << b;
    return a+b;
}
