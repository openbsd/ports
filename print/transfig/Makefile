# $OpenBSD: Makefile,v 1.23 2002/07/19 14:27:25 brad Exp $

COMMENT=	"tools to convert Xfig's .fig files"

VERSION=	3.2.3d
DISTNAME=	transfig.${VERSION}
PKGNAME=	transfig-${VERSION}
CATEGORIES=	print
MASTER_SITES=	ftp://www-epb.lbl.gov/xfig/ \
		ftp://www-epb.lbl.gov/xfig/previous_versions/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png
RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu \
		:netpbm->=9.19:graphics/netpbm

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	LOCALBASE="${LOCALBASE}" X11BASE="${X11BASE}"
FAKE_FLAGS+=	${MAKE_FLAGS} DESTDIR="${WRKINST}"

CONFIGURE_STYLE= imake

FLAVORS=	a4
FLAVOR?=

.if ${FLAVOR:L} == "a4"
PATCH_LIST=	patch-* a4-*
.endif

.include <bsd.port.mk>
