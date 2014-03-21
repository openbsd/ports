# $OpenBSD: Makefile,v 1.7 2014/03/21 01:11:52 jturner Exp $

COMMENT =		fast Qt IMAP e-mail client

DISTNAME =		trojita-0.4.1

CATEGORIES =		mail x11

SHARED_LIBS =		trojita_plugins	0.0 # 0.0

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://trojita.flaska.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=trojita/}
EXTRACT_SUFX =		.tar.bz2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB +=		lib/qt4/QtWebKit c m pthread z X11

MODULES =		devel/cmake gcc4 x11/qt4

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic

CONFIGURE_ENV +=	QTDIR="${MODQT_LIBDIR}"
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release \
			-DWITH_HARMATTAN=OFF \
			-DWITH_RAGEL=OFF \
			-DWITH_QT5=OFF \
			-DGIT_EXECUTABLE=""

TEST_IS_INTERACTIVE =	X11

do-test:
	cd ${WRKBUILD} && ${LOCALBASE}/bin/ctest --output-on-failure

.include <bsd.port.mk>
