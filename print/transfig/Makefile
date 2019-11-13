# $OpenBSD: Makefile,v 1.47 2019/11/13 15:24:11 fcambus Exp $

COMMENT=	tools to convert Xfig's .fig files  #'

VERSION=	3.2.7b
DISTNAME=	fig2dev-${VERSION}
EXTRACT_SUFX =	.tar.xz
PKGNAME=	transfig-${VERSION}
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcj/}
HOMEPAGE=	https://xfig.org/

LIB_DEPENDS=	graphics/png converters/libiconv
RUN_DEPENDS=	print/ghostscript/gnu \
		graphics/netpbm>=9.19

# MIT-like
PERMIT_PACKAGE=	Yes

WANTLIB=	Xpm c m png>=2 iconv

MAKE_FLAGS=	CC="${CC}"

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS = --enable-transfig
CONFIGURE_ENV = LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include

FLAVORS=	a4
FLAVOR?=

.if !${FLAVOR:Ma4}
CONFIGURE_ARGS += --enable-letterpaper
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
