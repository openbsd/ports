# $OpenBSD: Makefile,v 1.2 2010/07/02 21:47:43 ajacoutot Exp $

COMMENT=	framework for granting privileged operations to users

DISTNAME=	polkit-0.97

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
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread z

#MASTER_SITES=	http://hal.freedesktop.org/releases/
MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/

MODULES=	textproc/intltool \
		devel/gettext

BUILD_DEPENDS=	::textproc/gtk-doc \
		${MODGNU_AUTOMAKE_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS}

LIB_DEPENDS=	eggdbus-1::devel/eggdbus

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
USE_LIBTOOL=	Yes

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
	${INSTALL_DATA} ${FILESDIR}/60-desktop-policy.conf \
		${PREFIX}/share/examples/polkit/polkit-1/localauthority.conf.d/

.include <bsd.port.mk>
