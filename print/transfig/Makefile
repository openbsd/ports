# $OpenBSD: Makefile,v 1.50 2021/08/30 13:56:26 fcambus Exp $

COMMENT=	tools to convert Xfig's .fig files  #'

VERSION=	3.2.7b
DISTNAME=	fig2dev-${VERSION}
REVISION=	1
EXTRACT_SUFX =	.tar.xz
PKGNAME=	transfig-${VERSION}
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcj/}
HOMEPAGE=	https://xfig.org/

BUILD_DEPENDS=	print/ghostscript/gnu
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

.include <bsd.port.mk>
