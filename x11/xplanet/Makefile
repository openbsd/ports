# $OpenBSD: Makefile,v 1.10 2005/10/31 22:31:36 miod Exp $

COMMENT=	"Draw pictures of the earth textured by an image"

DISTNAME=	xplanet-1.1.2
PKGNAME=	${DISTNAME}p8
CATEGORIES=	astro x11

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://xplanet.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xplanet/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c charset fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 iconv intl jpeg m png stdc++ z X11

BUILD_DEPENDS=		::x11/xglobe:license-check
LIB_DEPENDS=		pango-1.0.399.1,pangoft2-1.0.399.1::devel/pango \
			gif.5::graphics/libungif \
			jpeg.62::graphics/jpeg \
			png.4::graphics/png

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-xscreensaver \
			--without-pnm --without-tiff \
			--without-cspice

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA} ${PORTSDIR}/x11/xglobe/files/OpenBSD-markers \
			${PREFIX}/share/xplanet/markers/

.include <bsd.port.mk>
