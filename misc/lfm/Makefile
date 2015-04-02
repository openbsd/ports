# $OpenBSD: Makefile,v 1.5 2015/04/02 14:21:16 jasper Exp $

COMMENT =		powerful curses interface python file manager

MODPY_EGG_VERSION =	2.3
DISTNAME =		lfm-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES =		misc

HOMEPAGE =		http://katxi.org/devel/lfm/

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

MODPY_PI =		Yes

MAINTAINER =		Patrikas Kugrinas <pkugrinas@gmail.com>

MODULES =		lang/python

NO_TEST =		Yes

post-install:
		${INSTALL_MAN} ${WRKSRC}/lfm.1 ${PREFIX}/man/man1
		${INSTALL_MAN} ${WRKSRC}/pyview.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
