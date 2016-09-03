# $OpenBSD: Makefile,v 1.7 2016/09/03 16:54:15 giovanni Exp $

COMMENT =	MySQL management utilities

MODPY_EGG_VERSION = 1.6.4
DISTNAME =	mysql-utilities-${MODPY_EGG_VERSION}
CATEGORIES =	databases
MASTER_SITES =	http://mirror.switch.ch/mirror/mysql/Downloads/MySQLGUITools/ \
		http://ftp.fi.muni.cz/pub/mysql/Downloads/MySQLGUITools/ \
		http://ftp.gwdg.de/pub/misc/mysql/Downloads/MySQLGUITools/
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
