#include "fidlform.h"
#include "ui_fidlform.h"
#include <QDebug>

FIDLForm::FIDLForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::FIDLForm)
{
    ui->setupUi(this);
}

FIDLForm::~FIDLForm()
{
   qDebug() << "~FIDLForm";
    delete ui;
}
