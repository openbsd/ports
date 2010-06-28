# $OpenBSD: Makefile,v 1.7 2010/06/28 15:55:21 ajacoutot Exp $

BROKEN=		WIP does not work yet

COMMENT=	framework for defining and tracking users

DISTNAME=	ConsoleKit-0.4.1
PKGNAME=	${DISTNAME:L}

CATEGORIES=	sysutils	

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS+=	ck-connector	0.0

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/ConsoleKit

MANTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += X11 Xau Xdmcp c dbus-1 dbus-glib-1 eggdbus-1 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 kvm pcre
WANTLIB += pthread pthread-stubs xcb z

MASTER_SITES=	http://www.freedesktop.org/software/ConsoleKit/dist/

MODULES=	devel/gettext

LIB_DEPENDS=	polkit-gobject-1::sysutils/polkit

AUTOCONF_VERSION= 2.63
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--with-pid-file=/var/run/ConsoleKit/pid \
		--enable-pam-module=no

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

FAKE_FLAGS=	DBUS_SYS_DIR=${TRUEPREFIX}/share/examples/consolekit/dbus-1 \
		sysconfdir=${TRUEPREFIX}/share/examples/consolekit

pre-patch:
	@cd ${WRKSRC}/tools && \
		cp -R freebsd openbsd && \
		perl -pi -e "s,freebsd,openbsd,g" openbsd/Makefile.in

# from FreeBSD ports
post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/ck-get-x11-display-device \
		${PREFIX}/libexec/ck-get-x11-display-device
	${INSTALL_SCRIPT} ${FILESDIR}/ck-get-x11-server-pid \
		${PREFIX}/libexec/ck-get-x11-server-pid
	${INSTALL_SCRIPT} ${FILESDIR}/pam-foreground-compat.ck \
		${PREFIX}/lib/ConsoleKit/run-session.d/pam-foreground-compat.ck

.include <bsd.port.mk>
