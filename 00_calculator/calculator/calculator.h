#ifndef CALCULATOR_H
#define CALCULATOR_H
#include <QObject>

class Calculator:public QObject
{
    Q_OBJECT
public:
    explicit Calculator(QObject* parent=nullptr);
    Q_INVOKABLE int add(int a,int b);
};

#endif // CALCULATOR_H
