# $OpenBSD: Makefile,v 1.7 2012/05/09 06:21:12 ajacoutot Exp $

VERSION =		3.2
PATCHLEVEL =		.2
SHARED_LIBS =		python3.2m 1.0
REVISION =		3
VERSION_SPEC =		>=3.2,<3.3

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

AUTOCONF_VERSION =	2.68
CONFIGURE_ARGS +=	--with-cxx_main \
			--with-system-expat

.include <bsd.port.mk>
