# $OpenBSD: Makefile,v 1.40 2013/03/11 11:37:54 espie Exp $

COMMENT=	tools to convert Xfig's .fig files

VERSION=	3.2.5a
DISTNAME=	transfig.${VERSION}
PKGNAME=	${DISTNAME:S/./-/}
REVISION = 	0
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcj/}
HOMEPAGE=	http://xfig.org/

LIB_DEPENDS=	graphics/png
RUN_DEPENDS=	print/ghostscript/gnu \
		graphics/netpbm>=9.19

# MIT-like
PERMIT_PACKAGE_CDROM=	Yes

PATCHORIG=	.pat.orig

CONFIGURE_STYLE=imake
USE_GROFF =	Yes

FLAVORS=	a4
FLAVOR?=
WANTLIB=	X11 Xpm c m z png>=2

.if ${FLAVOR:Ma4}
PATCH_LIST=	patch-* a4-*
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
