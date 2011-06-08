# $OpenBSD: Makefile,v 1.12 2011/06/08 17:37:36 jasper Exp $

COMMENT=	Scalable PostScript fonts for MetaFont

CATEGORIES=	print
DISTNAME=	mftrace-1.2.15
REVISION =	1

HOMEPAGE=	http://lilypond.org/mftrace/

MAINTAINER=	Matt Jibson <dolmant@gmail.com>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	http://lilypond.org/download/sources/mftrace/

WANTLIB=	c

MODULES=	lang/python

BUILD_DEPENDS=	graphics/potrace
RUN_DEPENDS=	graphics/potrace \
		print/t1utils \
		print/fontforge \
		print/texlive/base

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	PYTHON=${MODPY_BIN}
MAKE_FILE=	GNUmakefile
FAKE_FLAGS=	MODPY_SITEPKG=${MODPY_SITEPKG}

NO_REGRESS=	Yes

.include <bsd.port.mk>
