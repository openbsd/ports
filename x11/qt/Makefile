# OpenBSD makefile for:	qt
# Version required:	1.40
# Date created:		9 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.3 1998/07/15 05:51:23 marc Exp $
#

# Note: qt-1.40 is available but DOES NOT BUILD.
#
DISTNAME=	qt-1.33
CATEGORIES=	x11

MAINTAINER=	marc@OpenBSD.ORG

.if (${MACHINE_ARCH} == "sparc")
BROKEN=		"won't build due to g++ bug; reported"
.endif

MASTER_SITES=	ftp://ftp.troll.no/qt/source/

USE_GMAKE=	yes
USE_X11=	yes

post-configure:
.if (${MACHINE_ARCH} == "alpha")
	@(cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} ${GMAKE} ${MAKE_FLAGS} ${MAKEFILE} openbsd-gcc-static)
.else
	@(cd ${WRKSRC}; ${SETENV} ${CONFIGURE_ENV} ${GMAKE} ${MAKE_FLAGS} ${MAKEFILE} openbsd-gcc-shared)
.endif

# Things to install
#
MAN3=		QAccel.3qt QApplication.3qt QArray.3qt QBitArray.3qt \
		QBitVal.3qt QBitmap.3qt QBoxLayout.3qt QBrush.3qt \
		QBuffer.3qt QButton.3qt QButtonGroup.3qt QByteArray.3qt \
		QCheckBox.3qt QClipboard.3qt QCloseEvent.3qt QCollection.3qt \
		QColor.3qt QColorGroup.3qt QComboBox.3qt QConnection.3qt \
		QCursor.3qt QCustomEvent.3qt QDataStream.3qt QDate.3qt \
		QDateTime.3qt QDialog.3qt QDict.3qt QDictIterator.3qt \
		QDir.3qt QDoubleValidator.3qt QEvent.3qt QFile.3qt \
		QFileDialog.3qt QFileInfo.3qt QFocusEvent.3qt QFont.3qt \
		QFontInfo.3qt QFontMetrics.3qt QFrame.3qt QGArray.3qt \
		QGCache.3qt QGCacheIterator.3qt QGDict.3qt QGDictIterator.3qt \
		QGList.3qt QGListIterator.3qt QGManager.3qt QGridLayout.3qt \
		QGroupBox.3qt QHBoxLayout.3qt QIODevice.3qt QImage.3qt \
		QImageIO.3qt QIntDict.3qt QIntDictIterator.3qt \
		QIntValidator.3qt QKeyEvent.3qt QLCDNumber.3qt QLNode.3qt \
		QLabel.3qt QLayout.3qt QLineEdit.3qt QList.3qt QListBox.3qt \
		QListBoxItem.3qt QListBoxPixmap.3qt QListBoxText.3qt \
		QListIterator.3qt QMenuBar.3qt QMenuData.3qt QMessageBox.3qt \
		QMouseEvent.3qt QMoveEvent.3qt QMovie.3qt QMultiLineEdit.3qt \
		QObject.3qt QPaintDevice.3qt QPaintDeviceMetrics.3qt \
		QPaintEvent.3qt QPainter.3qt QPalette.3qt QPen.3qt \
		QPicture.3qt QPixmap.3qt QPixmapCache.3qt QPoint.3qt \
		QPointArray.3qt QPointVal.3qt QPopupMenu.3qt QPrinter.3qt \
		QProgressBar.3qt QProgressDialog.3qt QPtrDict.3qt \
		QPtrDictIterator.3qt QPushButton.3qt QQueue.3qt \
		QRadioButton.3qt QRangeControl.3qt QRect.3qt QRegExp.3qt \
		QRegion.3qt QResizeEvent.3qt QScrollBar.3qt QSemiModal.3qt \
		QSenderObject.3qt QShared.3qt QSignal.3qt QSize.3qt \
		QSlider.3qt QSocketNotifier.3qt QStack.3qt QStrIList.3qt \
		QStrList.3qt QString.3qt QTSManip.3qt QTabBar.3qt \
		QTabDialog.3qt QTableView.3qt QTextStream.3qt QTime.3qt \
		QTimer.3qt QTimerEvent.3qt QToolTip.3qt QToolTipGroup.3qt \
		QVBoxLayout.3qt QValidator.3qt QWMatrix.3qt QWidget.3qt \
		QWindow.3qt qaccel.3qt qapplication.3qt qarray.3qt \
		qbitarray.3qt qbitmap.3qt qbitval.3qt qboxlayout.3qt \
		qbrush.3qt qbuffer.3qt qbutton.3qt qbuttongroup.3qt \
		qbytearray.3qt qcheckbox.3qt qclipboard.3qt qcloseevent.3qt \
		qcollection.3qt qcolor.3qt qcolorgroup.3qt qcombobox.3qt \
		qconnection.3qt qcursor.3qt qcustomevent.3qt qdatastream.3qt \
		qdate.3qt qdatetime.3qt qdialog.3qt qdict.3qt \
		qdictiterator.3qt qdir.3qt qdoublevalidator.3qt qevent.3qt \
		qfile.3qt qfiledialog.3qt qfileinfo.3qt qfocusevent.3qt \
		qfont.3qt qfontinfo.3qt qfontmetrics.3qt qframe.3qt \
		qgarray.3qt qgcache.3qt qgcacheiterator.3qt qgdict.3qt \
		qgdictiterator.3qt qglist.3qt qglistiterator.3qt qgmanager.3qt \
		qgridlayout.3qt qgroupbox.3qt qhboxlayout.3qt qimage.3qt \
		qimageio.3qt qintdict.3qt qintdictiterator.3qt \
		qintvalidator.3qt qiodevice.3qt qkeyevent.3qt qlabel.3qt \
		qlayout.3qt qlcdnumber.3qt qlineedit.3qt qlist.3qt \
		qlistbox.3qt qlistboxitem.3qt qlistboxpixmap.3qt \
		qlistboxtext.3qt qlistiterator.3qt \
		qlnode.3qt qmenubar.3qt qmenudata.3qt qmessagebox.3qt \
		qmouseevent.3qt qmoveevent.3qt qmovie.3qt qmultilineedit.3qt \
		qobject.3qt qpaintdevice.3qt qpaintdevicemetrics.3qt \
		qpainter.3qt qpaintevent.3qt qpalette.3qt qpen.3qt \
		qpicture.3qt qpixmap.3qt qpixmapcache.3qt qpoint.3qt \
		qpointarray.3qt qpointval.3qt qpopupmenu.3qt qprinter.3qt \
		qprogressbar.3qt qprogressdialog.3qt qptrdict.3qt \
		qptrdictiterator.3qt qpushbutton.3qt qqueue.3qt \
		qradiobutton.3qt qrangecontrol.3qt qrect.3qt qregexp.3qt \
		qregion.3qt qresizeevent.3qt qscrollbar.3qt qsemimodal.3qt \
		qsenderobject.3qt qshared.3qt qsignal.3qt qsize.3qt \
		qslider.3qt qsocketnotifier.3qt qstack.3qt qstrilist.3qt \
		qstring.3qt qstrlist.3qt qtabbar.3qt qtabdialog.3qt \
		qtableview.3qt qtextstream.3qt qtime.3qt qtimer.3qt \
		qtimerevent.3qt qtooltip.3qt qtooltipgroup.3qt qtsmanip.3qt \
		qvalidator.3qt qvboxlayout.3qt qwidget.3qt qwindow.3qt \
		qwmatrix.3qt

EXAMPLES=	aclock biff connect cursor dclock desktop drawdemo \
		forever hello layout life menu movies pref \
		progress qmag qwerty showimg table tetrix tictac \
		timestmp tooltip widgets

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/bin/moc ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/lib/libqt.a ${PREFIX}/lib
	@ranlib ${PREFIX}/lib/libqt.a
.if (${MACHINE_ARCH} != "alpha")
	@${INSTALL_DATA} ${WRKSRC}/lib/libqt.so.1.33 ${PREFIX}/lib
	@${LDCONFIG} -m ${PREFIX}/lib
.endif
	@${MKDIR} ${PREFIX}/include/X11/qt
	@${INSTALL_DATA} ${WRKSRC}/include/* ${PREFIX}/include/X11/qt
	@${INSTALL_MAN} ${WRKSRC}/man/man1/* ${PREFIX}/man/man1
.for m in ${MAN3}
	@${INSTALL_MAN} ${WRKSRC}/man/man3/${m} ${PREFIX}/man/man3/${m:S/qt$//}
.endfor
	@${MKDIR} ${PREFIX}/share/doc/qt
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/qt
	@${INSTALL_DATA} ${WRKSRC}/README.QT ${PREFIX}/share/doc/qt
	@${MKDIR} ${PREFIX}/share/doc/qt/html
	@${INSTALL_DATA} ${WRKSRC}/html/* ${PREFIX}/share/doc/qt/html
	@${MKDIR} ${PREFIX}/lib/qt/tutorial
.for n in 1 2 3 4 5 6 7 8 9 10 11 12 13 14
	@${INSTALL_PROGRAM} ${WRKSRC}/tutorial/t${n}/t${n} \
		${PREFIX}/lib/qt/tutorial
.endfor
	@${MKDIR} ${PREFIX}/lib/qt/examples
	@${INSTALL_DATA} ${WRKSRC}/examples/README ${PREFIX}/lib/qt/examples
.for f in ${EXAMPLES}
	@${INSTALL_PROGRAM} ${WRKSRC}/examples/${f}/${f} \
		${PREFIX}/lib/qt/examples
.endfor
	@${INSTALL_PROGRAM} ${WRKSRC}/examples/picture/makepic \
		${PREFIX}/lib/qt/examples
	@${INSTALL_PROGRAM} ${WRKSRC}/examples/picture/makepic \
		${PREFIX}/lib/qt/examples

.include <bsd.port.mk>
