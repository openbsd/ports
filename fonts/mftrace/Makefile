# $OpenBSD: Makefile,v 1.4 2014/01/01 20:46:28 naddy Exp $

COMMENT=	Scalable PostScript fonts for MetaFont

CATEGORIES=	fonts print
DISTNAME=	mftrace-1.2.15
REVISION =	3

HOMEPAGE=	http://lilypond.org/mftrace/

MAINTAINER=	Matt Jibson <dolmant@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://lilypond.org/download/sources/mftrace/

WANTLIB=	c

MODULES=	lang/python

BUILD_DEPENDS=	graphics/potrace
RUN_DEPENDS=	graphics/potrace \
		print/t1utils \
		print/fontforge \
		print/texlive/base

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	PYTHON=${MODPY_BIN}
MAKE_FILE=	GNUmakefile
FAKE_FLAGS=	MODPY_SITEPKG=${MODPY_SITEPKG}

NO_TEST=	Yes

.include <bsd.port.mk>
