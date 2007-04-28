# $OpenBSD: Makefile,v 1.4 2007/04/28 14:58:21 bernd Exp $

COMMENT=	"glib bindings for dbus message system"

DISTNAME=	dbus-glib-0.73
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	dbus-glib-1          3.0      # .3.0
CATEGORIES=	x11

HOMEPAGE=	http://dbus.freedesktop.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		expat c pthread

MASTER_SITES=	${HOMEPAGE}releases/dbus-glib/

MODULES=	devel/gettext
LIB_DEPENDS=	dbus-1.>=5::x11/dbus \
		glib-2.0,gobject-2.0::devel/glib2

SEPARATE_BUILD=	simple
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread"

pre-build:
	cp ${FILESDIR}/dbus-bus-introspect.xml ${WRKBUILD}/tools/

.include <bsd.port.mk>
