# $OpenBSD: Makefile,v 1.9 2017/06/12 23:07:01 schwarze Exp $

COMMENT =	MySQL management utilities

MODPY_EGG_VERSION = 1.6.5
DISTNAME =	mysql-utilities-${MODPY_EGG_VERSION}
REVISION =	0
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

# XXX Regression tests are broken
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

post-install:
	cd ${WRKSRC} && ${MODPY_BIN} setup.py install_man --prefix=${PREFIX}/man

.include <bsd.port.mk>
