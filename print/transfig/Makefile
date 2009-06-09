# $OpenBSD: Makefile,v 1.31 2009/06/09 11:57:27 ajacoutot Exp $

COMMENT=	tools to convert Xfig's .fig files

VERSION=	3.2.5
DISTNAME=	transfig.${VERSION}
PKGNAME=	transfig-${VERSION}p0
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
WANTLIB=	m X11 c z Xpm

.if ${FLAVOR:L:Ma4}
PATCH_LIST=	patch-* a4-*
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
