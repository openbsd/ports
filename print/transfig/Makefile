# $OpenBSD: Makefile,v 1.16 2001/03/25 08:11:58 jakob Exp $

COMMENT=	tools to convert Xfig's .fig files

DISTNAME=	transfig.3.2.3c
PKGNAME=	transfig-3.2.3c
CATEGORIES=	print
NEED_VERSION=	1.363

MASTER_SITES=	ftp://www-epb.lbl.gov/xfig/ \
		ftp://www-epb.lbl.gov/xfig/previous_versions/
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
