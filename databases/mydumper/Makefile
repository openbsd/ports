# $OpenBSD: Makefile,v 1.2 2013/09/25 09:02:08 giovanni Exp $$

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
USE_GROFF =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
