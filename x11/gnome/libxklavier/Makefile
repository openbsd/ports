# $OpenBSD: Makefile,v 1.19 2009/05/14 08:01:28 ajacoutot Exp $

COMMENT=		utility library for XKB

GNOME_PROJECT=		libxklavier
GNOME_VERSION=		3.9
SHARED_LIBS +=  xklavier             13.1     # .14.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/LibXklavier

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xi m pcre xkbfile z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/iso-codes
LIB_DEPENDS=		glib-2.0.>=1200.0,gobject-2.0.>=1200.0::devel/glib2 \
			xml2::textproc/libxml

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-x \
			--with-xkb-base="${SYSCONFDIR}/X11/xkb/" \
			--with-xkb-bin-base="${X11BASE}/bin/" \
			--with-xmodmap-base="${LOCALBASE}/share/xmodmap"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
