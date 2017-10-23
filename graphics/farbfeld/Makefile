# $OpenBSD: Makefile,v 1.1.1.1 2017/10/23 21:39:20 bcallah Exp $

COMMENT =	lossless, uncompressed graphics format
DISTNAME =	farbfeld-3
CATEGORIES =	graphics converters

HOMEPAGE =	https://tools.suckless.org/farbfeld
MAINTAINER =	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c jpeg png

MASTER_SITES =	https://dl.suckless.org/farbfeld/

LIB_DEPENDS =	graphics/png \
		graphics/jpeg

RUN_DEPENDS =	graphics/ImageMagick

USE_GMAKE =	Yes
MAKE_ENV =	CC="${CC}"

NO_TEST =	Yes

.include <bsd.port.mk>
