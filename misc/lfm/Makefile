# $OpenBSD: Makefile,v 1.4 2015/01/22 22:58:17 naddy Exp $

COMMENT =		powerful curses interface python file manager

MODPY_EGG_VERSION =	2.3
DISTNAME =		lfm-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES =		misc

HOMEPAGE =		http://katxi.org/devel/lfm/

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=l/lfm/}

MAINTAINER =		Patrikas Kugrinas <pkugrinas@gmail.com>

MODULES =		lang/python

NO_TEST =		Yes

post-install:
		${INSTALL_MAN} ${WRKSRC}/lfm.1 ${PREFIX}/man/man1
		${INSTALL_MAN} ${WRKSRC}/pyview.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
