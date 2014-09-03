# $OpenBSD: Makefile,v 1.2 2014/09/03 16:28:30 giovanni Exp $

COMMENT =	MySQL management utilities

MODPY_EGG_VERSION = 1.4.4
DISTNAME =	mysql-utilities-${MODPY_EGG_VERSION}
CATEGORIES =	databases
MASTER_SITES =	${MASTER_SITE_MYSQL:=Downloads/MySQLGUITools/}
EXTRACT_SUFX =	.zip

HOMEPAGE =	http://www.mysql.com/

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

USE_GROFF =	Yes

# XXX Regression tests are broken
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

post-install:
	cd ${WRKSRC} && ${MODPY_BIN} setup.py install_man --prefix=${PREFIX}/man

.include <bsd.port.mk>
