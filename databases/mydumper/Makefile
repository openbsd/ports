# $OpenBSD: Makefile,v 1.13 2019/08/07 09:06:11 sthen Exp $$

COMMENT =	utility for quick MySQL dumping

V =		0.9.1
REVISION =	2
DISTNAME =	mydumper-${V}
CATEGORIES =	databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c crypto glib-2.0 gthread-2.0 m iconv mariadb
WANTLIB +=	pcre ssl z

MASTER_SITES =	https://launchpad.net/mydumper/${V:R}/${V}/+download/

MODULES =	devel/cmake
BUILD_DEPENDS =	textproc/py-sphinx
LIB_DEPENDS =	databases/mariadb \
		devel/glib2 \
		devel/pcre

NO_TEST =	Yes

.include <bsd.port.mk>
