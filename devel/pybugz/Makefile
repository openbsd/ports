# $OpenBSD: Makefile,v 1.2 2009/11/20 11:58:21 djm Exp $

COMMENT =		Commanline client for Bugzilla bug tracking systems

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		pybugz-${MODPY_EGG_VERSION}
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
