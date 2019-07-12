# $OpenBSD: Makefile,v 1.6 2019/07/12 21:15:35 sthen Exp $

COMMENT =		powerful curses interface python file manager

MODPY_EGG_VERSION =	2.3
DISTNAME =		lfm-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES =		misc

HOMEPAGE =		http://katxi.org/devel/lfm/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MAINTAINER =		Patrikas Kugrinas <pkugrinas@gmail.com>

MODULES =		lang/python

NO_TEST =		Yes

post-install:
		${INSTALL_MAN} ${WRKSRC}/lfm.1 ${PREFIX}/man/man1
		${INSTALL_MAN} ${WRKSRC}/pyview.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
