# $OpenBSD: Makefile,v 1.4 2018/10/22 20:30:44 rsadowski Exp $

COMMENT =		face detection library for KDE
DISTNAME =		libkface-${VERSION}
REVISION =		1

SHARED_LIBS =		kface		0.1

CATEGORIES =		graphics math

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += QtDBus QtGui QtSql QtSvg QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += opencv_calib3d opencv_contrib opencv_core opencv_features2d
WANTLIB += opencv_flann opencv_gpu opencv_highgui opencv_imgproc
WANTLIB += opencv_legacy opencv_ml opencv_nonfree opencv_objdetect
WANTLIB += opencv_ocl opencv_photo opencv_video

LIB_DEPENDS =		graphics/opencv

MODKDE4_USE =		libs

KFACE_V =		3.5.0
SUBST_VARS +=		KFACE_V

.include <bsd.port.mk>
