# $OpenBSD: Makefile,v 1.3 2014/04/13 01:01:38 naddy Exp $$

COMMENT =	utility for quick MySQL dumping

V =		0.5.2
DISTNAME =	mydumper-${V}
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c glib-2.0 gthread-2.0 mysqlclient_r pcre z

MASTER_SITES =	https://launchpad.net/mydumper/${V:R}/${V}/+download/

MODULES =	devel/cmake
BUILD_DEPENDS =	textproc/py-sphinx
LIB_DEPENDS =	databases/mysql \
		devel/glib2 \
		devel/pcre

NO_TEST =	Yes

.include <bsd.port.mk>
