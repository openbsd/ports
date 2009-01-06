# $OpenBSD: Makefile,v 1.43 2009/01/06 09:24:48 jasper Exp $

COMMENT=	draw pictures of the earth textured by an image

DISTNAME=	xplanet-1.2.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	astro geo x11

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://xplanet.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xplanet/}

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 c charset expat fontconfig freetype glib-2.0 gmodule-2.0 \
		gobject-2.0 iconv intl m stdc++ z

LIB_DEPENDS=		pango-1.0.>=399.1,pangoft2-1.0.>=399.1::devel/pango \
			gif.>=5::graphics/libungif \
			jpeg.>=62::graphics/jpeg \
			png.>=4::graphics/png

RUN_DEPENDS=		::geo/openbsd-developers

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-xscreensaver \
			--without-pnm --without-tiff \
			--without-cspice

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA} ${FILESDIR}/openbsd_markers \
			${PREFIX}/share/xplanet/config/
	${INSTALL_SCRIPT} ${FILESDIR}/openbsd_markers.sh \
			${PREFIX}/share/xplanet/scripts/

	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},' \
			${PREFIX}/share/xplanet/config/openbsd_markers \
			${PREFIX}/share/xplanet/scripts/openbsd_markers.sh

.include <bsd.port.mk>
