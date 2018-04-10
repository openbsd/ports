# $OpenBSD: Makefile,v 1.12 2018/04/10 13:25:34 gonzalo Exp $

COMMENT =		top-like monitor for Apache

V =			0.17.4
DISTNAME =		apachetop-$V
CATEGORIES =		sysutils

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		https://github.com/tessus/apachetop

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		https://github.com/tessus/apachetop/releases/download/$V/

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-logfile=/var/www/logs/access_log

WANTLIB +=		c m curses readline ${COMPILER_LIBCXX}

.include <bsd.port.mk>
