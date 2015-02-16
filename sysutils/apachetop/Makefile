# $OpenBSD: Makefile,v 1.6 2015/02/16 22:57:12 naddy Exp $

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

WANTLIB +=		c m ncurses readline stdc++

.include <bsd.port.mk>
