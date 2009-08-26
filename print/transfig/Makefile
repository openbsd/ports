# $OpenBSD: Makefile,v 1.33 2009/08/26 13:40:54 sthen Exp $

COMMENT=	tools to convert Xfig's .fig files

VERSION=	3.2.5a
DISTNAME=	transfig.${VERSION}
PKGNAME=	${DISTNAME:S/./-/}
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcj/}
HOMEPAGE=	http://xfig.org/

LIB_DEPENDS=	png.>=2::graphics/png
RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu \
		:netpbm->=9.19:graphics/netpbm

# MIT-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCHORIG=	.pat.orig

CONFIGURE_STYLE=imake
USE_X11=	Yes

FLAVORS=	a4
FLAVOR?=
WANTLIB=	X11 Xpm c m z

.if ${FLAVOR:L:Ma4}
PATCH_LIST=	patch-* a4-*
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
