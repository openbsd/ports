# $OpenBSD: Makefile,v 1.8 2017/07/16 19:19:02 espie Exp $

COMMENT =		top-like monitor for Apache

DISTNAME =		apachetop-0.12.6
REVISION =		0
CATEGORIES =		sysutils

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE =		http://freshmeat.net/projects/apachetop/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		http://www.webta.org/apachetop/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.59

CONFIGURE_ARGS =	--disable-fam \
			--with-logfile=/var/www/logs/access_log

WANTLIB +=		c m ncurses readline ${COMPILER_LIBCXX}

.include <bsd.port.mk>
