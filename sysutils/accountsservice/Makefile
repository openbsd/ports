# $OpenBSD: Makefile,v 1.58 2014/09/19 06:20:36 ajacoutot Exp $

# XXX fix change password (gnome-cc run-passwd.c: argv[0])

COMMENT=	D-Bus interface for user account query and manipulation

DISTNAME=	accountsservice-0.6.38
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=  accountsservice      0.0      # 0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://cgit.freedesktop.org/accountsservice/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre
WANTLIB += polkit-gobject-1 pthread z

MASTER_SITES=	http://www.freedesktop.org/software/accountsservice/

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--disable-systemd

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/accountsservice

pre-configure:
	perl -pi -e 's,/etc/gdm,${SYSCONFDIR}/gdm,g' \
		${WRKSRC}/src/daemon.c

post-install:
	rm -r ${WRKINST}/var/lib

.include <bsd.port.mk>
