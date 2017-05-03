# $OpenBSD: Makefile,v 1.43 2017/05/03 09:15:38 espie Exp $

COMMENT=	tools to convert Xfig's .fig files

VERSION=	3.2.5a
DISTNAME=	transfig.${VERSION}
PKGNAME=	${DISTNAME:S/./-/}
REVISION = 	2
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcj/}
HOMEPAGE=	http://xfig.org/

LIB_DEPENDS=	graphics/png
RUN_DEPENDS=	print/ghostscript/gnu \
		graphics/netpbm>=9.19

# MIT-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xpm c m z png>=2

MAKE_FLAGS=	CC="${CC}"

PATCHORIG=	.pat.orig

CONFIGURE_STYLE=imake
USE_GROFF =	Yes

FLAVORS=	a4
FLAVOR?=

.if ${FLAVOR:Ma4}
PATCH_LIST=	patch-* a4-*
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
