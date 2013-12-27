# $OpenBSD: Makefile,v 1.40 2013/12/27 10:12:58 ajacoutot Exp $

COMMENT=	framework for defining and tracking users

DISTNAME=	ConsoleKit-0.4.6
EXTRACT_SUFX=	.tar.xz
PKGNAME=	${DISTNAME:L}
REVISION=	7

CATEGORIES=	sysutils	

SHARED_LIBS +=  ck-connector         1.0      # 0.0

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/ConsoleKit

MANTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 kvm pcre polkit-gobject-1 pthread
WANTLIB += xcb z

MASTER_SITES=	http://www.freedesktop.org/software/ConsoleKit/dist/

MODULES=	devel/gettext

LIB_DEPENDS=	sysutils/polkit \
		x11/dbus-glib

AUTOCONF_VERSION= 2.69
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-pid-file=/var/run/ConsoleKit/pid \
		--disable-pam-module

USE_GMAKE=	Yes

FAKE_FLAGS=	DBUS_SYS_DIR=${TRUEPREFIX}/share/examples/consolekit/dbus-1 \
		sysconfdir=${TRUEPREFIX}/share/examples/consolekit

pre-patch:
	@cd ${WRKSRC}/tools && \
		cp -R freebsd openbsd && \
		perl -pi -e "s,freebsd,openbsd,g" openbsd/Makefile.in

# from Slackware Linux
post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/pam-foreground-compat.ck \
		${PREFIX}/lib/ConsoleKit/run-session.d/pam-foreground-compat.ck

.include <bsd.port.mk>
