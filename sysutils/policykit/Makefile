# $OpenBSD: Makefile,v 1.5 2009/10/15 21:51:54 ajacoutot Exp $

COMMENT=	authorization framework

DISTNAME=	PolicyKit-0.9
PKGNAME=	${DISTNAME:L}p2

CATEGORIES=	sysutils security

SHARED_LIBS+=	polkit-dbus	0.0 \
		polkit-grant	0.0 \
		polkit		0.0

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/PolicyKit

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c dbus-1 expat pcre pthread

MASTER_SITES=	http://hal.freedesktop.org/releases/

MODULES=	textproc/intltool \
		devel/gettext

BUILD_DEPENDS=	::textproc/libxslt \
		::textproc/docbook-xsl
LIB_DEPENDS=	dbus-glib-1.>=4::x11/dbus-glib

AUTOCONF_VERSION= 2.62

CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--with-polkit-user=_polkituser \
		--with-polkit-group=_polkituser \
		--enable-man-pages \
		--enable-gtk-doc=no \
		--with-authfw=bsdauth \
		--with-os-type=openbsd \
		--enable-man-pages \
		--disable-selinux

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/policykit

.include <bsd.port.mk>
