# $OpenBSD: Makefile,v 1.15 2000/08/06 19:16:49 brad Exp $

DISTNAME=	transfig.3.2.3c
PKGNAME=	transfig-3.2.3c
CATEGORIES=	print
NEED_VERSION=	1.310
MASTER_SITES=	ftp://www-epb.lbl.gov/xfig/
MASTER_SITE_SUBDIR= applications/drawing_tools/transfig

LIB_DEPENDS=	jpeg.62::graphics/jpeg
RUN_DEPENDS=	gs::print/ghostscript/gnu

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

FLAVORS=	a4
FLAVOR?=

.if ${FLAVOR:L} == "a4"
PATCH_LIST=	patch-* a4-*
.endif

.include <bsd.port.mk>
