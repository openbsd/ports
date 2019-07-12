# $OpenBSD: Makefile,v 1.16 2019/07/12 20:48:56 sthen Exp $

COMMENT=	scalable PostScript fonts generator for MetaFont

CATEGORIES=	fonts print
DISTNAME=	mftrace-1.2.15
REVISION =	6

HOMEPAGE=	http://lilypond.org/mftrace/

# GPL
PERMIT_PACKAGE=	Yes

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
