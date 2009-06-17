# $OpenBSD: Makefile,v 1.2 2009/06/17 01:03:35 sthen Exp $

COMMENT=		read and convert Microsoft Outlook mail files

DISTNAME=		libpst-0.6.37
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=  pst                  0.0      # .3.0
CATEGORIES=		converters mail

HOMEPAGE=		http://www.five-ten-sg.com/libpst/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/packages/

WANTLIB += c expat fontconfig freetype jpeg m png stdc++ z

MODULES=		converters/libiconv

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::graphics/ImageMagick
LIB_DEPENDS=		gd::graphics/gd

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-pst-debug \
			--enable-static-tools=no \
			--enable-libpst-shared
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		htmldir="${PREFIX}/share/doc/libpst/" \
			htmldeveldir="${PREFIX}/share/doc/libpst/devel/"

.include <bsd.port.mk>
