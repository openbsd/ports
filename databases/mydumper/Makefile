# $OpenBSD: Makefile,v 1.7 2015/10/27 10:51:32 giovanni Exp $$

COMMENT =	utility for quick MySQL dumping

V =		0.6.2
DISTNAME =	mydumper-${V}
CATEGORIES =	databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c crypto glib-2.0 gthread-2.0 m mysqlclient
WANTLIB +=	pcre pthread ssl z

MASTER_SITES =	https://launchpad.net/mydumper/${V:R}/${V}/+download/

MODULES =	devel/cmake
BUILD_DEPENDS =	textproc/py-sphinx
LIB_DEPENDS =	databases/mariadb \
		devel/glib2 \
		devel/pcre

NO_TEST =	Yes

.include <bsd.port.mk>
