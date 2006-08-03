# $OpenBSD: Makefile,v 1.27 2006/08/03 23:28:11 espie Exp $

COMMENT=	"tools to convert Xfig's .fig files"

VERSION=	3.2.4
DISTNAME=	transfig.${VERSION}
PKGNAME=	transfig-${VERSION}p0
CATEGORIES=	print
MASTER_SITES=	ftp://www-epb.lbl.gov/xfig/ \
		ftp://www-epb.lbl.gov/xfig/previous_versions/

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg \
		png.>=2::graphics/png
RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu \
		:netpbm->=9.19:graphics/netpbm

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

FLAVORS=	a4
FLAVOR?=
WANTLIB=	m X11 c z Xpm

.if ${FLAVOR:L:Ma4}
PATCH_LIST=	patch-* a4-*
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
