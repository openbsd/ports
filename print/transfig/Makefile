# $OpenBSD: Makefile,v 1.38 2010/11/20 09:48:40 espie Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCHORIG=	.pat.orig

CONFIGURE_STYLE=imake
USE_GROFF =	Yes

FLAVORS=	a4
FLAVOR?=
WANTLIB=	X11 Xpm c m z png>=2

.if ${FLAVOR:L:Ma4}
PATCH_LIST=	patch-* a4-*
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
