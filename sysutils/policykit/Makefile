# $OpenBSD: Makefile,v 1.2 2009/06/07 08:11:39 ajacoutot Exp $

COMMENT=	authorization framework

DISTNAME=	PolicyKit-0.9
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=	sysutils security

SHARED_LIBS+=	polkit-dbus	0.0 \
		polkit-grant	0.0 \
		polkit		0.0

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/PolicyKit

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	http://hal.freedesktop.org/releases/

MODULES=		textproc/intltool \
			devel/gettext

BUILD_DEPENDS=		::textproc/gtk-doc

AUTOCONF_VERSION=	2.62
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-man-pages \
			--enable-gtk-doc \
			--with-authfw=bsdauth \
			--with-os-type=openbsd \
			--enable-man-pages \
			--disable-selinux

USE_GMAKE=		Yes

USE_LIBTOOL=	Yes

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/policykit

.include <bsd.port.mk>
