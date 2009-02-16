# $OpenBSD: Makefile,v 1.35 2009/02/16 14:49:56 sthen Exp $

COMMENT=	GUI toolkit for X11

DISTNAME=	xforms-1.0
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	flimage	1.0 \
		forms	1.0 \
		formsGL	1.0
CATEGORIES=	x11

HOMEPAGE=	http://world.std.com/~xforms/

MASTER_SITES=	http://savannah.nongnu.org/download/xforms/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		GL X11 Xau Xdmcp Xext Xpm c jpeg m

USE_X11=		Yes
CONFIGURE_STYLE=	imake
MAKE_FLAGS=		LIBflimage_VERSION=${LIBflimage_VERSION} \
			LIBforms_VERSION=${LIBforms_VERSION} \
			LIBformsGL_VERSION=${LIBformsGL_VERSION}

BUILD_DEPENDS=		::graphics/jpeg

LIB_DEPENDS=		tiff.>=35::graphics/tiff

NO_REGRESS=		Yes

# crud confuses update-plist
post-extract:
	@find ${WRKDIST} -name \*.orig -print0 | xargs -0 rm

.include <bsd.port.mk>
