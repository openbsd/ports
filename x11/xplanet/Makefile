# $OpenBSD: Makefile,v 1.62 2019/07/12 20:51:30 sthen Exp $

COMMENT=	draw pictures of the earth textured by an image

DISTNAME=	xplanet-1.3.0
REVISION=	4
CATEGORIES=	astro geo x11

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://xplanet.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xplanet/}

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 c charset fontconfig freetype gif glib-2.0 gobject-2.0
WANTLIB += iconv intl jpeg m pango-1.0 pangoft2-1.0 png pthread
WANTLIB += ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		devel/gettext,-runtime \
			devel/pango \
			graphics/giflib \
			graphics/jpeg \
			graphics/png \
			devel/glib2

RUN_DEPENDS=		geo/openbsd-developers


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-xscreensaver \
			--without-pnm --without-tiff \
			--without-cspice

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA} ${FILESDIR}/openbsd_markers \
			${PREFIX}/share/xplanet/config/
	${INSTALL_PROGRAM_DIR} ${PREFIX}/share/xplanet/scripts
	${INSTALL_SCRIPT} ${FILESDIR}/openbsd_markers.sh \
			${PREFIX}/share/xplanet/scripts/

	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},' \
			${PREFIX}/share/xplanet/config/openbsd_markers \
			${PREFIX}/share/xplanet/scripts/openbsd_markers.sh

.include <bsd.port.mk>
