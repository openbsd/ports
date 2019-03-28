# $OpenBSD: Makefile,v 1.12 2019/03/28 19:28:47 rsadowski Exp $

COMMENT =	KDE thumbnail creation plugins
DISTNAME =	kdegraphics-thumbnailers-${MODKDE4_VERSION}
REVISION =	2

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Kexiv2=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Kdcraw=Yes \

.include <bsd.port.mk>
