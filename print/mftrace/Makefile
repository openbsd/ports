# $OpenBSD: Makefile,v 1.6 2008/01/04 17:48:37 espie Exp $

COMMENT=	Scalable PostScript fonts for MetaFont

CATEGORIES=	print
DISTNAME=	mftrace-1.2.4
PKGNAME=	${DISTNAME}p1

HOMEPAGE=	http://www.xs4all.nl/~hanwen/mftrace/

MAINTAINER=	Matt Jibson <dolmant@gmail.com>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c

MODULES=	lang/python

BUILD_DEPENDS=	:potrace-*:graphics/potrace
RUN_DEPENDS=	:potrace-*:graphics/potrace \
		:t1utils-*:print/t1utils \
		:fontforge-*:print/fontforge \
		::print/texlive/base

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	PYTHON=${MODPY_BIN}
MAKE_FILE=	GNUmakefile
FAKE_FLAGS=	MODPY_SITEPKG=${MODPY_SITEPKG}

NO_REGRESS=	Yes

.include <bsd.port.mk>
