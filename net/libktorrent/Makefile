# $OpenBSD: Makefile,v 1.14 2017/07/27 09:55:45 sthen Exp $

CATEGORIES =	net
COMMENT =	KTorrent engine
V =		1.3.1
DISTNAME =	libktorrent-$V
HOMEPAGE =	http://ktorrent.pwsp.net/
REVISION =	10

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	ktorrent	0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =          Yes

WANTLIB =  m pthread ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += lib/qt4/QtNetwork
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/solid
WANTLIB += gcrypt gmp qca

MASTER_SITES =	${HOMEPAGE}downloads/${V:C/^./4/}/

MODULES =		devel/gettext x11/kde4
MODKDE4_USE =		libs
MODKDE4_LIB_LINKS =	Yes

BUILD_DEPENDS =	devel/boost \
		devel/gettext-tools

LIB_DEPENDS =	devel/gmp \
		security/libgcrypt \
		security/qca

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

.include <bsd.port.mk>
