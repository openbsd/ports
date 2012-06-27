# $OpenBSD: Makefile,v 1.8 2012/06/27 18:58:25 rpointel Exp $

VERSION =		3.2
PATCHLEVEL =		.3
SHARED_LIBS =		python3.2m 1.0
VERSION_SPEC =		>=3.2,<3.3

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

AUTOCONF_VERSION =	2.68
CONFIGURE_ARGS +=	--with-cxx_main \
			--with-system-expat

.include <bsd.port.mk>
