COMMENT =	Qt client for the X2Go system

DISTNAME =	x2goclient-4.1.2.2
REVISION =	0

CATEGORIES =	x11

HOMEPAGE =	https://www.x2go.org

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Svg
WANTLIB += Qt5Widgets Qt5X11Extras X11 Xpm c cups ldap m ssh

MASTER_SITES =	https://code.x2go.org/releases/source/x2goclient/

MODULES =	x11/qt5

LIB_DEPENDS =	databases/openldap \
		print/cups,-libs \
		security/libssh>=0.8.4 \
		x11/qt5/qtx11extras \
		x11/qt5/qtsvg

RUN_DEPENDS =	x11/nx/nxcomp \
		x11/nx/nxproxy \
		x11/gtk+3,-guic \
		devel/desktop-file-utils \
		shells/bash

EXAMPLESDIR =	${PREFIX}/share/examples/x2goclient
MAKE_ENV =	CURDIR=${WRKSRC}

post-patch:
	find ${WRKSRC} -type f -iname "*.cpp"  -exec \
		perl -pi -e 's,Q_OS_LINUX,Q_OS_UNIX,g;' \
		-e 's,#include <linux/fs.h>,,g;' {} \;
	find ${WRKSRC} -type f -iname "*.h" -exec \
		perl -pi -e 's,Q_OS_LINUX,Q_OS_UNIX,g;' \
		-e 's,#include <linux/fs.h>,,g;' {} \;
	sed -i -e 's,nxproxy -S nx,${LOCALBASE}/NX/bin/nxproxy -S nx,' \
		${WRKSRC}/src/onmainwindow.cpp

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/x2goclient-cli ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/HOWTO.GPGCARD ${EXAMPLESDIR}

.include <bsd.port.mk>
