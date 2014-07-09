# $OpenBSD: Makefile,v 1.9 2014/07/09 20:03:24 zhuk Exp $

COMMENT =	KDE thumbnail creation plugins
DISTNAME =	kdegraphics-thumbnailers-${MODKDE4_VERSION}

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdcraw ${KDE4LIB}/kdeui ${KDE4LIB}/kexiv2
WANTLIB += ${KDE4LIB}/kio

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/libkexiv2>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/libkdcraw>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
