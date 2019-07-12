# $OpenBSD: Makefile,v 1.15 2019/07/12 20:49:39 sthen Exp $

COMMENT =		top-like monitor for Apache

V =			0.18.4
DISTNAME =		apachetop-$V
CATEGORIES =		sysutils
REVISION =		0

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		https://github.com/tessus/apachetop

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB +=		c m curses readline ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://github.com/tessus/apachetop/releases/download/$V/

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-logfile=/var/www/logs/access_log

.include <bsd.port.mk>
