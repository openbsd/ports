# $OpenBSD: Makefile,v 1.8 2012/03/19 18:10:35 ajacoutot Exp $

COMMENT=	device color profile management daemon

DISTNAME=	colord-0.1.18
EXTRACT_SUFX=	.tar.xz
REVISION=	0

SHARED_LIBS +=  colord               0.0      # 1.4

CATEGORIES=	graphics devel

HOMEPAGE=	http://www.freedesktop.org/software/colord/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += lcms2 m pcre polkit-gobject-1 pthread sqlite3 z

MASTER_SITES=	http://www.freedesktop.org/software/colord/releases/

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	lang/vala \
		devel/gobject-introspection \
		textproc/docbook2x

LIB_DEPENDS=	sysutils/polkit \
		graphics/lcms2

# technically not needed, however it is handy to have some profiles to
# start working with
RUN_DEPENDS=	graphics/shared-color-profiles

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--disable-gtk-doc \
		--disable-reverse \
		--disable-gudev \
		--with-daemon-user=_colord \
		--disable-sane # needs gudev, libgusb

FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/colord"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/colord.conf.in \
		 ${WRKSRC}/src/{cd-profile-store.c,cd-profile.c}
	perl -pi -e 's,-Wclobbered,,g;' \
		-e 's,-Wempty-body,,g;' \
		-e 's,-Wignored-qualifiers,,g;' \
		-e 's,-Wtype-limits,,g;' \
		-e 's,-Wmissing-parameter-type,,g' \
		${WRKSRC}/configure

post-install:
	rm -rf ${WRKINST}/lib ${PREFIX}/var
	# needs gudev
	rm ${PREFIX}/share/examples/colord/dbus-1/system.d/org.freedesktop.colord-sane.conf \
		${PREFIX}/share/dbus-1/system-services/org.freedesktop.colord-sane.service \
		${PREFIX}/share/dbus-1/interfaces/org.freedesktop.colord.sane.xml

.include <bsd.port.mk>
