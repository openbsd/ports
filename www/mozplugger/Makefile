# $OpenBSD: Makefile,v 1.19 2019/07/12 20:50:48 sthen Exp $

COMMENT =		framework for loading web content in external viewers

DISTNAME =		mozplugger-2.1.6
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		http://mozplugger.mozdev.org/

# GPLv2
PERMIT_PACKAGE =	Yes

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
