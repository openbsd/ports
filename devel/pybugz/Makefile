# $OpenBSD: Makefile,v 1.9 2013/08/07 21:31:45 naddy Exp $

COMMENT =		Commandline client for Bugzilla bug tracking systems

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		pybugz-${MODPY_EGG_VERSION}
REVISION =		4
CATEGORIES =		devel

HOMEPAGE =		http://www.liquidx.net/pybugz/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://pybugz.googlecode.com/files/

MODULES =		lang/python

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-bugz
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-bugz

.include <bsd.port.mk>
