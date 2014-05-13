# $OpenBSD: Makefile,v 1.4 2014/05/13 13:02:18 giovanni Exp $$

COMMENT =	utility for quick MySQL dumping

V =		0.6.1
DISTNAME =	mydumper-${V}
CATEGORIES =	databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c glib-2.0 gthread-2.0 m mysqlclient_r pcre pthread z

MASTER_SITES =	https://launchpad.net/mydumper/${V:R}/${V}/+download/

MODULES =	devel/cmake
BUILD_DEPENDS =	textproc/py-sphinx
LIB_DEPENDS =	databases/mysql \
		devel/glib2 \
		devel/pcre

NO_TEST =	Yes

.include <bsd.port.mk>
