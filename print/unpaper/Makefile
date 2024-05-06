COMMENT=		post-processing tool for scanned paper sheets

DISTNAME=		unpaper-7.0.0
REVISION=		0

CATEGORIES=		print graphics

HOMEPAGE=		https://www.flameeyes.com/projects/unpaper

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

# C library compatible with POSIX.1-2008 is required
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += avcodec avformat avutil c m

SITES=			https://www.flameeyes.eu/files/
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		textproc/py-sphinx${MODPY_FLAVOR}

LIB_DEPENDS=		graphics/ffmpeg

.include <bsd.port.mk>
