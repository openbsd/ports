# $OpenBSD: Makefile,v 1.1.1.1 2009/05/11 09:36:17 jasper Exp $

COMMENT=		read and convert Microsoft Outlook mail files

DISTNAME=		libpst-0.6.37
SHARED_LIBS +=  pst                  0.0      # .3.0
CATEGORIES=		converters mail

HOMEPAGE=		http://www.five-ten-sg.com/libpst/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/packages/

WANTLIB += c m stdc++

MODULES=		converters/libiconv

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::graphics/ImageMagick \
			::graphics/gd

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
