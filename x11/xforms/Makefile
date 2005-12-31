# $OpenBSD: Makefile,v 1.30 2005/12/31 17:29:38 naddy Exp $

COMMENT=	"GUI toolkit for X11"

DISTNAME=	xforms-1.0
SHARED_LIBS=	flimage	1.0 \
		forms	1.0 \
		formsGL	1.0
CATEGORIES=	x11

HOMEPAGE=	http://world.std.com/~xforms/

MASTER_SITES=	http://savannah.nongnu.org/download/xforms/stable.pkg/1.0/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		GL X11 Xext Xpm c jpeg m

USE_X11=		Yes
CONFIGURE_STYLE=	imake
MAKE_FLAGS=		LIBflimage_VERSION=${LIBflimage_VERSION} \
			LIBforms_VERSION=${LIBforms_VERSION} \
			LIBformsGL_VERSION=${LIBformsGL_VERSION}
FAKE_FLAGS=		${DESTNAMEDIR}=${WRKINST} ${MAKE_FLAGS}

BUILD_DEPENDS=		::graphics/jpeg

LIB_DEPENDS=		tiff.35::graphics/tiff

NO_REGRESS=		Yes

# crud confuses update-plist
post-extract:
	@find ${WRKDIST} -name \*.orig -print0 | xargs -0 rm

.include <bsd.port.mk>
