# $OpenBSD: Makefile,v 1.6 2014/09/15 17:10:45 brad Exp $$

COMMENT =	utility for quick MySQL dumping

V =		0.6.1
DISTNAME =	mydumper-${V}
REVISION =	1
CATEGORIES =	databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto glib-2.0 gthread-2.0 m mysqlclient_r pcre pthread
WANTLIB +=	ssl z

MASTER_SITES =	https://launchpad.net/mydumper/${V:R}/${V}/+download/

MODULES =	devel/cmake
BUILD_DEPENDS =	textproc/py-sphinx
LIB_DEPENDS =	databases/mariadb \
		devel/glib2 \
		devel/pcre

NO_TEST =	Yes

.include <bsd.port.mk>
