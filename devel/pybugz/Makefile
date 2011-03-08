# $OpenBSD: Makefile,v 1.4 2011/03/08 06:44:55 ajacoutot Exp $

COMMENT =		Commandline client for Bugzilla bug tracking systems

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		pybugz-${MODPY_EGG_VERSION}
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		http://www.liquidx.net/pybugz/

MAINTAINER =		Damien Miller <djm@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://pybugz.googlecode.com/files/

MODULES =		lang/python

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-bugz
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-bugz

.include <bsd.port.mk>
