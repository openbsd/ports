# $OpenBSD: Makefile,v 1.9 2012/08/23 19:19:17 sthen Exp $

VERSION =		3.2
PATCHLEVEL =		.3
REVISION =		0
SHARED_LIBS =		python3.2m 1.0
VERSION_SPEC =		>=3.2,<3.3

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

AUTOCONF_VERSION =	2.68
CONFIGURE_ARGS +=	--with-cxx_main \
			--with-system-expat

.include <bsd.port.mk>
