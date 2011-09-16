# $OpenBSD: Makefile,v 1.2 2011/09/16 10:31:23 espie Exp $

COMMENT =		powerful curses interface python file manager

MODPY_EGG_VERSION =	2.3
DISTNAME =		lfm-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES =		misc

HOMEPAGE =		http://katxi.org/devel/lfm/

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=l/lfm/}

MAINTAINER =		Patrikas Kugrinas <pkugrinas@gmail.com>

MODULES =		lang/python

NO_REGRESS =		Yes
USE_GROFF =		Yes

post-install:
		${INSTALL_MAN} ${WRKSRC}/lfm.1 ${PREFIX}/man/man1
		${INSTALL_MAN} ${WRKSRC}/pyview.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
