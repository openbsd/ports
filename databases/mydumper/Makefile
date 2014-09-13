# $OpenBSD: Makefile,v 1.5 2014/09/13 18:09:20 brad Exp $$

COMMENT =	utility for quick MySQL dumping

V =		0.6.1
DISTNAME =	mydumper-${V}
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c glib-2.0 gthread-2.0 m mysqlclient_r pcre pthread z

MASTER_SITES =	https://launchpad.net/mydumper/${V:R}/${V}/+download/

MODULES =	devel/cmake
BUILD_DEPENDS =	textproc/py-sphinx
LIB_DEPENDS =	databases/mariadb \
		devel/glib2 \
		devel/pcre

NO_TEST =	Yes

.include <bsd.port.mk>
