#include "fidlform.h"
#include "ui_fidlform.h"

FIDLForm::FIDLForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::FIDLForm)
{
    ui->setupUi(this);
}

FIDLForm::~FIDLForm()
{
    delete ui;
}
