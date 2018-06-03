# $OpenBSD: Makefile,v 1.2 2018/06/03 12:03:56 fcambus Exp $

COMMENT =	encoder/decoder implementation for DEC SIXEL graphics

V =		1.7.3
DISTNAME =	libsixel-$V
REVISION =	0

SHARED_LIBS +=	sixel	0.0	# 1.6

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/saitoha/libsixel

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c jpeg m png z

MASTER_SITES =	https://github.com/saitoha/libsixel/releases/download/v$V/

LIB_DEPENDS =	graphics/jpeg \
		graphics/png

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS += --disable-python \
		  --without-libcurl

# Requires Python
NO_TEST =	Yes

.include <bsd.port.mk>
