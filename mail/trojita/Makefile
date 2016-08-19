# $OpenBSD: Makefile,v 1.15 2016/08/19 10:15:24 sthen Exp $

# ld wrapper doesn't actually fix build, but setting USE_WXNEEDED for
# documentation purposes.  see CONFIGURE_ARGS.
USE_WXNEEDED =		Yes # QtWebKit

COMMENT =		fast Qt IMAP e-mail client

DISTNAME =		trojita-0.6
REVISION =		0

SHARED_LIBS =		trojita_plugins	1.0 # 1.0

CATEGORIES =		mail x11

HOMEPAGE =		http://trojita.flaska.net/
MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=trojita/}
EXTRACT_SUFX =		.tar.bz2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB +=		lib/qt4/QtSql lib/qt4/QtWebKit c m pthread z X11

MODULES =		devel/cmake gcc4 x11/qt4

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_ENV +=	QTDIR="${MODQT_LIBDIR}"
CONFIGURE_ARGS +=	-DWITH_RAGEL=OFF \
			-DWITH_QT5=OFF \
			-DWITH_QTKEYCHAIN_PLUGIN=OFF \
			-DGIT_EXECUTABLE="" \
			-DCMAKE_EXE_LINKER_FLAGS="-Wl,-z,wxneeded"

TEST_IS_INTERACTIVE =	X11

do-test:
	cd ${WRKBUILD} && ${LOCALBASE}/bin/ctest --output-on-failure

.include <bsd.port.mk>
