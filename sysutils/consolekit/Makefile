# $OpenBSD: Makefile,v 1.4 2009/10/27 12:00:22 jasper Exp $

BROKEN=		WIP does not work yet

COMMENT=	Framework for defining and tracking users

DISTNAME=	ConsoleKit-0.3.0
PKGNAME=	${DISTNAME:L}p2

CATEGORIES=	sysutils	

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS+=	ck-connector	0.0

HOMEPAGE=	http://freedesktop.org/wiki/Software/ConsoleKit

MANTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += X11 Xau Xdmcp c dbus-1 dbus-glib-1 expat glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 kvm pcre pthread pthread-stubs xcb z

MASTER_SITES=	ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/

LIB_DEPENDS=	polkit::sysutils/policykit

MODULES=	devel/gettext

AUTOCONF_VERSION= 2.61
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--with-pid-file=/var/run/consolekit.pid \
		--with-authfw=bsdauth \
		--with-os-type=openbsd
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

FAKE_FLAGS=	DBUS_SYS_DIR=${TRUEPREFIX}/share/examples/consolekit/dbus-1 \
		sysconfdir=${TRUEPREFIX}/share/examples/consolekit

pre-patch:
	@cd ${WRKSRC}/tools && \
		cp -R freebsd openbsd && \
		perl -pi -e "s,freebsd,openbsd,g" openbsd/Makefile.in

.include <bsd.port.mk>
