# $OpenBSD: Makefile,v 1.2 2004/07/25 17:34:06 couderc Exp $

COMMENT=	"image manipulation library"
DISTNAME=	imlib2-1.1.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.enlightenment.org/pages/imlib2.html
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

MAINTAINER=	Francois Briere <fbriere@imaginatif.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

LIB_DEPENDS=	ungif.5::graphics/libungif \
		png.2::graphics/png \
		tiff.35::graphics/tiff

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=	--enable-mmx
.endif

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
