/********************************************************************************
** Form generated from reading UI file 'main.ui'
**
** Created by: Qt User Interface Compiler version 5.12.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAIN_H
#define UI_MAIN_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QDial>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QLCDNumber>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QScrollArea>
#include <QtWidgets/QSlider>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QGroupBox *groupAccelerometer;
    QLabel *label_3;
    QLCDNumber *lcdAcceleration;
    QWidget *verticalLayoutWidget;
    QVBoxLayout *layoutOpenGL;
    QGroupBox *groupBox_2;
    QProgressBar *progressIR6;
    QProgressBar *progressIR4;
    QProgressBar *progressIR2;
    QLabel *lblIR7;
    QLabel *lblIR0;
    QProgressBar *progressIR0;
    QLabel *lblIR2;
    QLabel *lblIR1;
    QProgressBar *progressIR5;
    QProgressBar *progressIR7;
    QLabel *lblIR3;
    QLabel *lblIR6;
    QProgressBar *progressIR1;
    QLabel *lblIR5;
    QLabel *lblIR4;
    QProgressBar *progressIR3;
    QLabel *label_11;
    QLabel *lblIRaddress;
    QLabel *label_7;
    QLabel *lblIRdata;
    QLabel *lblIRcheck;
    QLabel *label_5;
    QLabel *label_6;
    QLabel *lblLight;
    QGroupBox *groupBox_4;
    QPushButton *btn2;
    QPushButton *btn5;
    QPushButton *btn1;
    QPushButton *btn4;
    QPushButton *btn3;
    QGroupBox *groupBox_5;
    QPushButton *btnUp;
    QLabel *lblVel;
    QPushButton *btnStop;
    QPushButton *btnRight;
    QPushButton *btnLeft;
    QPushButton *btnDown;
    QSlider *sliderVel;
    QGroupBox *groupBox_6;
    QCheckBox *checkLed5;
    QCheckBox *checkLed6;
    QCheckBox *checkLed2;
    QCheckBox *checkLed0;
    QCheckBox *checkLed8;
    QCheckBox *checkLed3;
    QCheckBox *checkLed1;
    QCheckBox *checkLed9;
    QCheckBox *checkLed7;
    QCheckBox *checkLed4;
    QGroupBox *groupBox_7;
    QLineEdit *txtPort;
    QPushButton *btnDisconnect;
    QPushButton *btnConnect;
    QCheckBox *chkSensors;
    QGroupBox *groupBox_8;
    QPushButton *btnImage;
    QScrollArea *scrollCamera;
    QWidget *scrollAreaWidgetContents;
    QLineEdit *txtZoom;
    QLineEdit *txtHeight;
    QLineEdit *txtWidth;
    QPushButton *btnParameters;
    QLabel *label_8;
    QLabel *label_9;
    QRadioButton *radioColor;
    QRadioButton *radioGrayscale;
    QLabel *label_10;
    QCheckBox *chkRotate;
    QGroupBox *groupBox_9;
    QLabel *label_4;
    QLabel *lblSelector;
    QDial *dialSelector;
    QGroupBox *groupBox_3;
    QLabel *lblMic1;
    QProgressBar *progressMic0;
    QProgressBar *progressMic1;
    QProgressBar *progressMic2;
    QLabel *lblMic2;
    QLabel *lblMic0;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(870, 650);
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(MainWindow->sizePolicy().hasHeightForWidth());
        MainWindow->setSizePolicy(sizePolicy);
        MainWindow->setMinimumSize(QSize(870, 650));
        MainWindow->setMaximumSize(QSize(870, 650));
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        groupAccelerometer = new QGroupBox(centralwidget);
        groupAccelerometer->setObjectName(QString::fromUtf8("groupAccelerometer"));
        groupAccelerometer->setGeometry(QRect(540, 10, 301, 231));
        label_3 = new QLabel(groupAccelerometer);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setGeometry(QRect(40, 30, 161, 23));
        lcdAcceleration = new QLCDNumber(groupAccelerometer);
        lcdAcceleration->setObjectName(QString::fromUtf8("lcdAcceleration"));
        lcdAcceleration->setGeometry(QRect(150, 30, 91, 23));
        lcdAcceleration->setSegmentStyle(QLCDNumber::Flat);
        verticalLayoutWidget = new QWidget(groupAccelerometer);
        verticalLayoutWidget->setObjectName(QString::fromUtf8("verticalLayoutWidget"));
        verticalLayoutWidget->setGeometry(QRect(70, 70, 151, 141));
        layoutOpenGL = new QVBoxLayout(verticalLayoutWidget);
        layoutOpenGL->setObjectName(QString::fromUtf8("layoutOpenGL"));
        layoutOpenGL->setContentsMargins(0, 0, 0, 0);
        groupBox_2 = new QGroupBox(centralwidget);
        groupBox_2->setObjectName(QString::fromUtf8("groupBox_2"));
        groupBox_2->setGeometry(QRect(540, 250, 301, 271));
        progressIR6 = new QProgressBar(groupBox_2);
        progressIR6->setObjectName(QString::fromUtf8("progressIR6"));
        progressIR6->setGeometry(QRect(48, 212, 95, 20));
        progressIR6->setMaximum(2000);
        progressIR6->setValue(24);
        progressIR4 = new QProgressBar(groupBox_2);
        progressIR4->setObjectName(QString::fromUtf8("progressIR4"));
        progressIR4->setGeometry(QRect(48, 158, 95, 20));
        progressIR4->setMaximum(2000);
        progressIR4->setValue(24);
        progressIR2 = new QProgressBar(groupBox_2);
        progressIR2->setObjectName(QString::fromUtf8("progressIR2"));
        progressIR2->setGeometry(QRect(48, 104, 95, 20));
        progressIR2->setMaximum(2000);
        progressIR2->setValue(24);
        lblIR7 = new QLabel(groupBox_2);
        lblIR7->setObjectName(QString::fromUtf8("lblIR7"));
        lblIR7->setGeometry(QRect(20, 240, 20, 17));
        lblIR0 = new QLabel(groupBox_2);
        lblIR0->setObjectName(QString::fromUtf8("lblIR0"));
        lblIR0->setGeometry(QRect(20, 51, 20, 17));
        progressIR0 = new QProgressBar(groupBox_2);
        progressIR0->setObjectName(QString::fromUtf8("progressIR0"));
        progressIR0->setGeometry(QRect(48, 50, 95, 20));
        progressIR0->setMaximum(2000);
        progressIR0->setValue(24);
        progressIR0->setInvertedAppearance(false);
        lblIR2 = new QLabel(groupBox_2);
        lblIR2->setObjectName(QString::fromUtf8("lblIR2"));
        lblIR2->setGeometry(QRect(20, 105, 20, 17));
        lblIR1 = new QLabel(groupBox_2);
        lblIR1->setObjectName(QString::fromUtf8("lblIR1"));
        lblIR1->setGeometry(QRect(20, 78, 20, 17));
        progressIR5 = new QProgressBar(groupBox_2);
        progressIR5->setObjectName(QString::fromUtf8("progressIR5"));
        progressIR5->setGeometry(QRect(48, 185, 95, 20));
        progressIR5->setMaximum(2000);
        progressIR5->setValue(24);
        progressIR7 = new QProgressBar(groupBox_2);
        progressIR7->setObjectName(QString::fromUtf8("progressIR7"));
        progressIR7->setGeometry(QRect(48, 239, 95, 20));
        progressIR7->setMaximum(2000);
        progressIR7->setValue(24);
        lblIR3 = new QLabel(groupBox_2);
        lblIR3->setObjectName(QString::fromUtf8("lblIR3"));
        lblIR3->setGeometry(QRect(20, 132, 20, 17));
        lblIR6 = new QLabel(groupBox_2);
        lblIR6->setObjectName(QString::fromUtf8("lblIR6"));
        lblIR6->setGeometry(QRect(20, 213, 20, 17));
        progressIR1 = new QProgressBar(groupBox_2);
        progressIR1->setObjectName(QString::fromUtf8("progressIR1"));
        progressIR1->setGeometry(QRect(48, 77, 95, 20));
        progressIR1->setMaximum(2000);
        progressIR1->setValue(24);
        lblIR5 = new QLabel(groupBox_2);
        lblIR5->setObjectName(QString::fromUtf8("lblIR5"));
        lblIR5->setGeometry(QRect(20, 186, 20, 17));
        lblIR4 = new QLabel(groupBox_2);
        lblIR4->setObjectName(QString::fromUtf8("lblIR4"));
        lblIR4->setGeometry(QRect(20, 159, 20, 17));
        progressIR3 = new QProgressBar(groupBox_2);
        progressIR3->setObjectName(QString::fromUtf8("progressIR3"));
        progressIR3->setGeometry(QRect(48, 131, 95, 20));
        progressIR3->setMaximum(2000);
        progressIR3->setValue(24);
        label_11 = new QLabel(groupBox_2);
        label_11->setObjectName(QString::fromUtf8("label_11"));
        label_11->setGeometry(QRect(160, 42, 135, 31));
        label_11->setAlignment(Qt::AlignCenter);
        lblIRaddress = new QLabel(groupBox_2);
        lblIRaddress->setObjectName(QString::fromUtf8("lblIRaddress"));
        lblIRaddress->setGeometry(QRect(270, 165, 58, 17));
        label_7 = new QLabel(groupBox_2);
        label_7->setObjectName(QString::fromUtf8("label_7"));
        label_7->setGeometry(QRect(193, 190, 69, 17));
        lblIRdata = new QLabel(groupBox_2);
        lblIRdata->setObjectName(QString::fromUtf8("lblIRdata"));
        lblIRdata->setGeometry(QRect(270, 190, 58, 17));
        lblIRcheck = new QLabel(groupBox_2);
        lblIRcheck->setObjectName(QString::fromUtf8("lblIRcheck"));
        lblIRcheck->setGeometry(QRect(270, 140, 58, 17));
        label_5 = new QLabel(groupBox_2);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        label_5->setGeometry(QRect(193, 140, 69, 17));
        label_6 = new QLabel(groupBox_2);
        label_6->setObjectName(QString::fromUtf8("label_6"));
        label_6->setGeometry(QRect(193, 165, 69, 17));
        lblLight = new QLabel(groupBox_2);
        lblLight->setObjectName(QString::fromUtf8("lblLight"));
        lblLight->setGeometry(QRect(205, 70, 45, 45));
        groupBox_4 = new QGroupBox(centralwidget);
        groupBox_4->setObjectName(QString::fromUtf8("groupBox_4"));
        groupBox_4->setGeometry(QRect(340, 160, 181, 81));
        btn2 = new QPushButton(groupBox_4);
        btn2->setObjectName(QString::fromUtf8("btn2"));
        btn2->setGeometry(QRect(60, 20, 50, 32));
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/images/speaker.png"), QSize(), QIcon::Normal, QIcon::Off);
        btn2->setIcon(icon);
        btn5 = new QPushButton(groupBox_4);
        btn5->setObjectName(QString::fromUtf8("btn5"));
        btn5->setGeometry(QRect(90, 50, 50, 32));
        btn5->setIcon(icon);
        btn1 = new QPushButton(groupBox_4);
        btn1->setObjectName(QString::fromUtf8("btn1"));
        btn1->setGeometry(QRect(0, 20, 50, 32));
        btn1->setIcon(icon);
        btn4 = new QPushButton(groupBox_4);
        btn4->setObjectName(QString::fromUtf8("btn4"));
        btn4->setGeometry(QRect(30, 50, 50, 32));
        btn4->setIcon(icon);
        btn3 = new QPushButton(groupBox_4);
        btn3->setObjectName(QString::fromUtf8("btn3"));
        btn3->setGeometry(QRect(120, 20, 50, 32));
        btn3->setIcon(icon);
        groupBox_5 = new QGroupBox(centralwidget);
        groupBox_5->setObjectName(QString::fromUtf8("groupBox_5"));
        groupBox_5->setGeometry(QRect(340, 250, 181, 191));
        btnUp = new QPushButton(groupBox_5);
        btnUp->setObjectName(QString::fromUtf8("btnUp"));
        btnUp->setGeometry(QRect(62, 82, 50, 32));
        lblVel = new QLabel(groupBox_5);
        lblVel->setObjectName(QString::fromUtf8("lblVel"));
        lblVel->setGeometry(QRect(10, 30, 154, 17));
        lblVel->setAlignment(Qt::AlignCenter);
        btnStop = new QPushButton(groupBox_5);
        btnStop->setObjectName(QString::fromUtf8("btnStop"));
        btnStop->setGeometry(QRect(62, 116, 50, 32));
        btnRight = new QPushButton(groupBox_5);
        btnRight->setObjectName(QString::fromUtf8("btnRight"));
        btnRight->setGeometry(QRect(114, 116, 51, 32));
        btnLeft = new QPushButton(groupBox_5);
        btnLeft->setObjectName(QString::fromUtf8("btnLeft"));
        btnLeft->setGeometry(QRect(9, 116, 51, 32));
        btnDown = new QPushButton(groupBox_5);
        btnDown->setObjectName(QString::fromUtf8("btnDown"));
        btnDown->setGeometry(QRect(62, 150, 50, 32));
        sliderVel = new QSlider(groupBox_5);
        sliderVel->setObjectName(QString::fromUtf8("sliderVel"));
        sliderVel->setGeometry(QRect(10, 50, 154, 22));
        sliderVel->setMinimum(100);
        sliderVel->setMaximum(1000);
        sliderVel->setValue(500);
        sliderVel->setOrientation(Qt::Horizontal);
        sliderVel->setTickPosition(QSlider::NoTicks);
        groupBox_6 = new QGroupBox(centralwidget);
        groupBox_6->setObjectName(QString::fromUtf8("groupBox_6"));
        groupBox_6->setGeometry(QRect(340, 10, 181, 141));
        checkLed5 = new QCheckBox(groupBox_6);
        checkLed5->setObjectName(QString::fromUtf8("checkLed5"));
        checkLed5->setGeometry(QRect(95, 22, 73, 21));
        checkLed6 = new QCheckBox(groupBox_6);
        checkLed6->setObjectName(QString::fromUtf8("checkLed6"));
        checkLed6->setGeometry(QRect(95, 44, 73, 21));
        checkLed2 = new QCheckBox(groupBox_6);
        checkLed2->setObjectName(QString::fromUtf8("checkLed2"));
        checkLed2->setGeometry(QRect(20, 66, 74, 21));
        checkLed0 = new QCheckBox(groupBox_6);
        checkLed0->setObjectName(QString::fromUtf8("checkLed0"));
        checkLed0->setGeometry(QRect(20, 22, 74, 21));
        checkLed8 = new QCheckBox(groupBox_6);
        checkLed8->setObjectName(QString::fromUtf8("checkLed8"));
        checkLed8->setGeometry(QRect(95, 88, 73, 21));
        checkLed3 = new QCheckBox(groupBox_6);
        checkLed3->setObjectName(QString::fromUtf8("checkLed3"));
        checkLed3->setGeometry(QRect(20, 88, 74, 21));
        checkLed1 = new QCheckBox(groupBox_6);
        checkLed1->setObjectName(QString::fromUtf8("checkLed1"));
        checkLed1->setGeometry(QRect(20, 44, 74, 21));
        checkLed9 = new QCheckBox(groupBox_6);
        checkLed9->setObjectName(QString::fromUtf8("checkLed9"));
        checkLed9->setGeometry(QRect(95, 110, 73, 21));
        checkLed7 = new QCheckBox(groupBox_6);
        checkLed7->setObjectName(QString::fromUtf8("checkLed7"));
        checkLed7->setGeometry(QRect(95, 66, 73, 21));
        checkLed4 = new QCheckBox(groupBox_6);
        checkLed4->setObjectName(QString::fromUtf8("checkLed4"));
        checkLed4->setGeometry(QRect(20, 110, 74, 21));
        groupBox_7 = new QGroupBox(centralwidget);
        groupBox_7->setObjectName(QString::fromUtf8("groupBox_7"));
        groupBox_7->setGeometry(QRect(30, 10, 291, 141));
        txtPort = new QLineEdit(groupBox_7);
        txtPort->setObjectName(QString::fromUtf8("txtPort"));
        txtPort->setGeometry(QRect(20, 34, 251, 22));
        btnDisconnect = new QPushButton(groupBox_7);
        btnDisconnect->setObjectName(QString::fromUtf8("btnDisconnect"));
        btnDisconnect->setEnabled(false);
        btnDisconnect->setGeometry(QRect(150, 60, 130, 32));
        btnConnect = new QPushButton(groupBox_7);
        btnConnect->setObjectName(QString::fromUtf8("btnConnect"));
        btnConnect->setEnabled(true);
        btnConnect->setGeometry(QRect(20, 60, 131, 32));
        chkSensors = new QCheckBox(groupBox_7);
        chkSensors->setObjectName(QString::fromUtf8("chkSensors"));
        chkSensors->setGeometry(QRect(20, 110, 141, 21));
        chkSensors->setChecked(true);
        groupBox_8 = new QGroupBox(centralwidget);
        groupBox_8->setObjectName(QString::fromUtf8("groupBox_8"));
        groupBox_8->setGeometry(QRect(30, 160, 291, 431));
        btnImage = new QPushButton(groupBox_8);
        btnImage->setObjectName(QString::fromUtf8("btnImage"));
        btnImage->setGeometry(QRect(45, 30, 201, 32));
        scrollCamera = new QScrollArea(groupBox_8);
        scrollCamera->setObjectName(QString::fromUtf8("scrollCamera"));
        scrollCamera->setGeometry(QRect(45, 70, 200, 200));
        scrollCamera->setMinimumSize(QSize(200, 200));
        scrollCamera->setMaximumSize(QSize(200, 200));
        scrollCamera->setAutoFillBackground(false);
        scrollCamera->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        scrollCamera->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        scrollCamera->setWidgetResizable(false);
        scrollAreaWidgetContents = new QWidget();
        scrollAreaWidgetContents->setObjectName(QString::fromUtf8("scrollAreaWidgetContents"));
        scrollAreaWidgetContents->setGeometry(QRect(0, 0, 196, 196));
        scrollCamera->setWidget(scrollAreaWidgetContents);
        txtZoom = new QLineEdit(groupBox_8);
        txtZoom->setObjectName(QString::fromUtf8("txtZoom"));
        txtZoom->setGeometry(QRect(68, 359, 112, 22));
        txtHeight = new QLineEdit(groupBox_8);
        txtHeight->setObjectName(QString::fromUtf8("txtHeight"));
        txtHeight->setGeometry(QRect(68, 295, 112, 22));
        txtWidth = new QLineEdit(groupBox_8);
        txtWidth->setObjectName(QString::fromUtf8("txtWidth"));
        txtWidth->setGeometry(QRect(68, 327, 112, 22));
        btnParameters = new QPushButton(groupBox_8);
        btnParameters->setObjectName(QString::fromUtf8("btnParameters"));
        btnParameters->setGeometry(QRect(50, 391, 191, 32));
        label_8 = new QLabel(groupBox_8);
        label_8->setObjectName(QString::fromUtf8("label_8"));
        label_8->setGeometry(QRect(18, 295, 42, 22));
        label_9 = new QLabel(groupBox_8);
        label_9->setObjectName(QString::fromUtf8("label_9"));
        label_9->setGeometry(QRect(18, 327, 42, 22));
        radioColor = new QRadioButton(groupBox_8);
        radioColor->setObjectName(QString::fromUtf8("radioColor"));
        radioColor->setGeometry(QRect(190, 296, 85, 21));
        radioColor->setChecked(true);
        radioGrayscale = new QRadioButton(groupBox_8);
        radioGrayscale->setObjectName(QString::fromUtf8("radioGrayscale"));
        radioGrayscale->setGeometry(QRect(190, 328, 85, 21));
        label_10 = new QLabel(groupBox_8);
        label_10->setObjectName(QString::fromUtf8("label_10"));
        label_10->setGeometry(QRect(18, 359, 42, 22));
        chkRotate = new QCheckBox(groupBox_8);
        chkRotate->setObjectName(QString::fromUtf8("chkRotate"));
        chkRotate->setGeometry(QRect(190, 360, 94, 21));
        groupBox_9 = new QGroupBox(centralwidget);
        groupBox_9->setObjectName(QString::fromUtf8("groupBox_9"));
        groupBox_9->setGeometry(QRect(540, 530, 301, 61));
        label_4 = new QLabel(groupBox_9);
        label_4->setObjectName(QString::fromUtf8("label_4"));
        label_4->setGeometry(QRect(23, 30, 69, 17));
        lblSelector = new QLabel(groupBox_9);
        lblSelector->setObjectName(QString::fromUtf8("lblSelector"));
        lblSelector->setGeometry(QRect(110, 30, 58, 17));
        dialSelector = new QDial(groupBox_9);
        dialSelector->setObjectName(QString::fromUtf8("dialSelector"));
        dialSelector->setEnabled(false);
        dialSelector->setGeometry(QRect(220, 22, 35, 35));
        dialSelector->setMaximum(16);
        dialSelector->setPageStep(1);
        dialSelector->setWrapping(true);
        dialSelector->setNotchTarget(1.000000000000000);
        dialSelector->setNotchesVisible(true);
        groupBox_3 = new QGroupBox(centralwidget);
        groupBox_3->setObjectName(QString::fromUtf8("groupBox_3"));
        groupBox_3->setGeometry(QRect(340, 450, 181, 141));
        lblMic1 = new QLabel(groupBox_3);
        lblMic1->setObjectName(QString::fromUtf8("lblMic1"));
        lblMic1->setGeometry(QRect(80, 120, 32, 17));
        progressMic0 = new QProgressBar(groupBox_3);
        progressMic0->setObjectName(QString::fromUtf8("progressMic0"));
        progressMic0->setGeometry(QRect(20, 29, 20, 90));
        progressMic0->setMaximum(1500);
        progressMic0->setValue(24);
        progressMic0->setOrientation(Qt::Vertical);
        progressMic1 = new QProgressBar(groupBox_3);
        progressMic1->setObjectName(QString::fromUtf8("progressMic1"));
        progressMic1->setGeometry(QRect(80, 30, 20, 90));
        progressMic1->setMaximum(1500);
        progressMic1->setValue(24);
        progressMic1->setOrientation(Qt::Vertical);
        progressMic2 = new QProgressBar(groupBox_3);
        progressMic2->setObjectName(QString::fromUtf8("progressMic2"));
        progressMic2->setGeometry(QRect(140, 29, 20, 90));
        progressMic2->setMaximum(1500);
        progressMic2->setValue(24);
        progressMic2->setOrientation(Qt::Vertical);
        lblMic2 = new QLabel(groupBox_3);
        lblMic2->setObjectName(QString::fromUtf8("lblMic2"));
        lblMic2->setGeometry(QRect(140, 120, 32, 17));
        lblMic0 = new QLabel(groupBox_3);
        lblMic0->setObjectName(QString::fromUtf8("lblMic0"));
        lblMic0->setGeometry(QRect(20, 120, 32, 17));
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 870, 22));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "E-Puck Monitor", nullptr));
        groupAccelerometer->setTitle(QApplication::translate("MainWindow", "Accelerometer", nullptr));
        label_3->setText(QApplication::translate("MainWindow", "Acceleration", nullptr));
        groupBox_2->setTitle(QApplication::translate("MainWindow", "Infrareds", nullptr));
        lblIR7->setText(QApplication::translate("MainWindow", "IR7", nullptr));
        lblIR0->setText(QApplication::translate("MainWindow", "IR0", nullptr));
        lblIR2->setText(QApplication::translate("MainWindow", "IR2", nullptr));
        lblIR1->setText(QApplication::translate("MainWindow", "IR1", nullptr));
        lblIR3->setText(QApplication::translate("MainWindow", "IR3", nullptr));
        lblIR6->setText(QApplication::translate("MainWindow", "IR6", nullptr));
        lblIR5->setText(QApplication::translate("MainWindow", "IR5", nullptr));
        lblIR4->setText(QApplication::translate("MainWindow", "IR4", nullptr));
        label_11->setText(QApplication::translate("MainWindow", "Ambient light", nullptr));
        lblIRaddress->setText(QString());
        label_7->setText(QApplication::translate("MainWindow", "IR data:", nullptr));
        lblIRdata->setText(QString());
        lblIRcheck->setText(QString());
        label_5->setText(QApplication::translate("MainWindow", "IR check:", nullptr));
        label_6->setText(QApplication::translate("MainWindow", "IR address:", nullptr));
        lblLight->setText(QString());
        groupBox_4->setTitle(QApplication::translate("MainWindow", "Speaker", nullptr));
        btn2->setText(QApplication::translate("MainWindow", "2", nullptr));
        btn5->setText(QApplication::translate("MainWindow", "5", nullptr));
        btn1->setStyleSheet(QString());
        btn1->setText(QApplication::translate("MainWindow", "1", nullptr));
        btn4->setText(QApplication::translate("MainWindow", "4", nullptr));
        btn3->setText(QApplication::translate("MainWindow", "3", nullptr));
        groupBox_5->setTitle(QApplication::translate("MainWindow", "Motors", nullptr));
        btnUp->setText(QApplication::translate("MainWindow", "F", nullptr));
        lblVel->setText(QApplication::translate("MainWindow", "Velocity", nullptr));
        btnStop->setText(QApplication::translate("MainWindow", "S", nullptr));
        btnRight->setText(QApplication::translate("MainWindow", "R", nullptr));
        btnLeft->setText(QApplication::translate("MainWindow", "L", nullptr));
        btnDown->setText(QApplication::translate("MainWindow", "B", nullptr));
        groupBox_6->setTitle(QApplication::translate("MainWindow", "LEDs", nullptr));
        checkLed5->setText(QApplication::translate("MainWindow", "LED5", nullptr));
        checkLed6->setText(QApplication::translate("MainWindow", "LED6", nullptr));
        checkLed2->setText(QApplication::translate("MainWindow", "LED2", nullptr));
        checkLed0->setText(QApplication::translate("MainWindow", "LED0", nullptr));
        checkLed8->setText(QApplication::translate("MainWindow", "LED8", nullptr));
        checkLed3->setText(QApplication::translate("MainWindow", "LED3", nullptr));
        checkLed1->setText(QApplication::translate("MainWindow", "LED1", nullptr));
        checkLed9->setText(QApplication::translate("MainWindow", "LED9", nullptr));
        checkLed7->setText(QApplication::translate("MainWindow", "LED7", nullptr));
        checkLed4->setText(QApplication::translate("MainWindow", "LED4", nullptr));
        groupBox_7->setTitle(QApplication::translate("MainWindow", "User", nullptr));
        btnDisconnect->setText(QApplication::translate("MainWindow", "Disconnect", nullptr));
        btnConnect->setText(QApplication::translate("MainWindow", "Connect", nullptr));
        chkSensors->setText(QApplication::translate("MainWindow", "Activate sensors", nullptr));
        groupBox_8->setTitle(QApplication::translate("MainWindow", "Camera", nullptr));
        btnImage->setText(QApplication::translate("MainWindow", "Start receiving images", nullptr));
        txtZoom->setText(QApplication::translate("MainWindow", "8", nullptr));
        txtHeight->setText(QApplication::translate("MainWindow", "40", nullptr));
        txtWidth->setText(QApplication::translate("MainWindow", "40", nullptr));
        btnParameters->setText(QApplication::translate("MainWindow", "Send Paramters", nullptr));
        label_8->setText(QApplication::translate("MainWindow", "Height", nullptr));
        label_9->setText(QApplication::translate("MainWindow", "Width", nullptr));
        radioColor->setText(QApplication::translate("MainWindow", "Color", nullptr));
        radioGrayscale->setText(QApplication::translate("MainWindow", "Grayscale", nullptr));
        label_10->setText(QApplication::translate("MainWindow", "Zoom", nullptr));
        chkRotate->setText(QApplication::translate("MainWindow", "Rotate", nullptr));
        groupBox_9->setTitle(QApplication::translate("MainWindow", "Selector", nullptr));
        label_4->setText(QApplication::translate("MainWindow", "Selector:", nullptr));
        lblSelector->setText(QString());
        groupBox_3->setTitle(QApplication::translate("MainWindow", "Microphones", nullptr));
        lblMic1->setText(QApplication::translate("MainWindow", "Mic1", nullptr));
        lblMic2->setText(QApplication::translate("MainWindow", "Mic2", nullptr));
        lblMic0->setText(QApplication::translate("MainWindow", "Mic0", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAIN_H
