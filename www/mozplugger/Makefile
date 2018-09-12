# $OpenBSD: Makefile,v 1.18 2018/09/12 19:33:25 naddy Exp $

COMMENT =		framework for loading web content in external viewers

DISTNAME =		mozplugger-2.1.6
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		http://mozplugger.mozdev.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c

MASTER_SITES =		${HOMEPAGE}files/

USE_GMAKE =		Yes

NO_TEST =		Yes

CONFIGURE_STYLE =	gnu dest
CONFIGURE_ARGS =	LLD_EMUL=${LLD_EMUL}

FAKE_FLAGS =		PLUGINDIRS=${WRKINST}${TRUEPREFIX}/lib/mozilla/plugins

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mozplugger
	mv ${WRKINST}/etc/mozpluggerrc ${PREFIX}/share/examples/mozplugger

.include <bsd.port.mk>
