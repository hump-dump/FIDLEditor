#ifndef FIDLFORM_H
#define FIDLFORM_H

#include <QWidget>

namespace Ui {
class FIDLForm;
}

class FIDLForm : public QWidget
{
    Q_OBJECT

public:
    explicit FIDLForm(QWidget *parent = 0);
    ~FIDLForm();

private:
    Ui::FIDLForm *ui;
};

#endif // FIDLFORM_H
