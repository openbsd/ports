# $OpenBSD: Makefile,v 1.1.1.1 2017/04/16 15:58:31 fcambus Exp $

COMMENT =	encoder/decoder implementation for DEC SIXEL graphics

GH_ACCOUNT =	saitoha
GH_PROJECT =	libsixel
GH_TAGNAME =	v1.7.3

SHARED_LIBS +=	sixel	0.0	# 1.6

CATEGORIES =	graphics

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c jpeg m png z

LIB_DEPENDS =	graphics/jpeg \
		graphics/png

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS += --disable-python \
		  --without-libcurl

# Requires Python
NO_TEST =	Yes

.include <bsd.port.mk>
