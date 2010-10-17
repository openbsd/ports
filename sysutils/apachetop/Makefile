# $OpenBSD: Makefile,v 1.1.1.1 2010/10/17 11:15:29 landry Exp $

COMMENT =		top-like monitor for Apache

DISTNAME =		apachetop-0.12.6
CATEGORIES =		sysutils

MAINTAINER =		Gonzalo L. R. <gonzalo@x61.com.ar>

HOMEPAGE =		http://freshmeat.net/projects/apachetop/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =		http://www.webta.org/apachetop/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.59

CONFIGURE_ARGS =	--disable-fam \
			--with-logfile=/var/www/logs/access_log

WANTLIB +=		c m ncurses readline stdc++

.include <bsd.port.mk>
