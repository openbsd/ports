# $OpenBSD: Makefile,v 1.4 2013/11/24 19:56:33 zhuk Exp $

CATEGORIES =	net
COMMENT =	KTorrent engine
V =		1.3.1
DISTNAME =	libktorrent-$V
HOMEPAGE =	http://ktorrent.org/
REVISION =	2

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	ktorrent	0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =          Yes

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += lib/qt4/QtNetwork
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/solid
WANTLIB += gcrypt gmp qca2

MASTER_SITES =	${HOMEPAGE}downloads/${V:C/^./4/}/

MODULES =		x11/kde4
MODKDE4_USE =		libs
MODKDE4_LIB_LINKS =	Yes

BUILD_DEPENDS =	devel/boost \
		devel/doxygen

LIB_DEPENDS =	devel/gmp \
		security/libgcrypt \
		security/qca2

.include <bsd.port.mk>
