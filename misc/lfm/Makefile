# $OpenBSD: Makefile,v 1.7 2019/07/17 14:46:33 danj Exp $

COMMENT =		powerful curses interface python file manager

MODPY_EGG_VERSION =	2.3
DISTNAME =		lfm-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES =		misc

HOMEPAGE =		http://katxi.org/devel/lfm/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

NO_TEST =		Yes

post-install:
		${INSTALL_MAN} ${WRKSRC}/lfm.1 ${PREFIX}/man/man1
		${INSTALL_MAN} ${WRKSRC}/pyview.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
