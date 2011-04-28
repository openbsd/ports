# $OpenBSD: Makefile,v 1.17 2011/04/28 13:09:07 ajacoutot Exp $

COMMENT=	framework for granting privileged operations to users

DISTNAME=	polkit-0.101

SHARED_LIBS +=  polkit-gobject-1	1.0 # .0.0
SHARED_LIBS +=  polkit-backend-1	1.0 # .0.0
SHARED_LIBS +=  polkit-agent-1		1.0 # .0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/PolicyKit

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c expat gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += pcre pthread z

MASTER_SITES=	http://hal.freedesktop.org/releases/

MODULES=	textproc/intltool \
		devel/gettext

BUILD_DEPENDS=	${MODGNU_AUTOMAKE_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS} \
		devel/gobject-introspection

# needs AM_PROG_LIBTOOL
BUILD_DEPENDS+=	devel/libtool

# We do no want to depends on gtk-doc as it creates a dependency loop:
# polkit -> gtk-doc -> yelp -> gconf2 -> polkit
BUILD_DEPENDS+=	textproc/libxslt \
		textproc/docbook-xsl

LIB_DEPENDS=	devel/glib2

AUTOCONF_VERSION= 2.64
AUTOMAKE_VERSION=1.10

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--localstatedir=/var \
		--mandir=${PREFIX}/man \
		--enable-introspection \
		--enable-man-pages \
		--enable-verbose-mode \
		--enable-examples \
		--with-os-type=openbsd \
		--with-authfw=bsdauth

USE_GMAKE=	Yes
USE_GROFF=	Yes

# XXX: the libtool wrapper script is passed as argument to g-ir-scanner,
# instead of the actual library
USE_LIBTOOL=	gnu

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/polkit

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/man/pkexec.xml \
		${WRKSRC}/actions/org.freedesktop.policykit.policy.in \
		${WRKSRC}/src/examples/org.freedesktop.policykit.examples.pkexec.policy.in
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		${LOCALBASE}/bin/autoreconf

post-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/examples/polkit/var/db/polkit-1/localauthority/10-vendor.d
	${INSTALL_DATA} ${FILESDIR}/60-desktop-policy.conf \
		${PREFIX}/share/examples/polkit/polkit-1/localauthority.conf.d/
	${INSTALL_DATA} ${FILESDIR}/10-desktop-policy.pkla \
		${PREFIX}/share/examples/polkit/var/db/polkit-1/localauthority/10-vendor.d/

.include <bsd.port.mk>
