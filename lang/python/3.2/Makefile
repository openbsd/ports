# $OpenBSD: Makefile,v 1.5 2011/09/27 21:27:36 sthen Exp $

VERSION =		3.2
PATCHLEVEL =		.2
SHARED_LIBS =		python3.2m 1.0
REVISION =		1
VERSION_SPEC =		>=3.2,<3.3

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

AUTOCONF_VERSION =	2.68
CONFIGURE_ARGS +=	--with-cxx_main \
			--with-system-expat

.include <bsd.port.mk>
