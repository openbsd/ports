# $OpenBSD: Makefile,v 1.11 2018/04/08 10:30:32 sthen Exp $

COMMENT =		top-like monitor for Apache

DISTNAME =		apachetop-0.12.6
REVISION =		3
CATEGORIES =		sysutils

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		https://github.com/tessus/apachetop

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		http://www.webta.org/apachetop/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.59

CONFIGURE_ARGS =	--disable-fam \
			--with-logfile=/var/www/logs/access_log

WANTLIB +=		c m ncurses readline ${COMPILER_LIBCXX}

.include <bsd.port.mk>
