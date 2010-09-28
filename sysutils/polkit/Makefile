# $OpenBSD: Makefile,v 1.7 2010/09/28 17:57:23 ajacoutot Exp $

COMMENT=	framework for granting privileged operations to users

DISTNAME=	polkit-0.97
REVISION=	2

SHARED_LIBS +=  polkit-gobject-1	0.0 # .0.0
SHARED_LIBS +=  polkit-backend-1	0.0 # .0.0
SHARED_LIBS +=  polkit-agent-1		0.0 # .0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/PolicyKit

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c dbus-1 dbus-glib-1 expat gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread z eggdbus-1

#MASTER_SITES=	http://hal.freedesktop.org/releases/
MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/

MODULES=	textproc/intltool \
		devel/gettext

BUILD_DEPENDS=	${MODGNU_AUTOMAKE_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS}

# We do no want to depends on gtk-doc as it creates a dependency loop:
# polkit -> gtk-doc -> yelp -> gconf2 -> polkit
BUILD_DEPENDS+=	::textproc/libxslt \
		::textproc/docbook-xsl

LIB_DEPENDS=	::devel/eggdbus

AUTOCONF_VERSION= 2.62
AUTOMAKE_VERSION=1.9

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CC=${CC} CFLAGS="${CFLAGS}"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--mandir=${PREFIX}/man \
		--enable-man-pages \
		--enable-verbose-mode \
		--enable-examples \
		--disable-gtk-doc \
		--disable-introspection \
		--with-os-type=openbsd \
		--with-authfw=bsdauth

USE_GMAKE=	Yes
# XXX needs libtoolize
USE_LIBTOOL=	gnu

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/polkit

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/man/pkexec.xml \
		${WRKSRC}/actions/org.freedesktop.policykit.policy.in \
		${WRKSRC}/src/examples/org.freedesktop.policykit.examples.pkexec.policy.in

do-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${CONFIGURE_ENV} ./autogen.sh ${CONFIGURE_ARGS}

post-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/examples/polkit/var/db/polkit-1/localauthority/10-vendor.d
	${INSTALL_DATA} ${FILESDIR}/60-desktop-policy.conf \
		${PREFIX}/share/examples/polkit/polkit-1/localauthority.conf.d/
	${INSTALL_DATA} ${FILESDIR}/10-desktop-policy.pkla \
		${PREFIX}/share/examples/polkit/var/db/polkit-1/localauthority/10-vendor.d/

.include <bsd.port.mk>
