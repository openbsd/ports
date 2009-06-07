# $OpenBSD: Makefile,v 1.1.1.1 2009/06/07 02:53:06 robert Exp $

COMMENT=	Framework for controlling access to system-wide components

DISTNAME=	PolicyKit-0.9
PKGNAME=	${DISTNAME:L}
CATEGORIES=	sysutils	

SHARED_LIBS+=	polkit-dbus	2.0 \
		polkit-grant	2.0 \
		polkit		2.0

HOMEPAGE=	http://cgit.freedesktop.org/PolicyKit/

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	http://hal.freedesktop.org/releases/

AUTOCONF_VERSION=	2.62
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-authfw=bsdauth \
			--with-os-type=openbsd
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include"
USE_GMAKE=		Yes

USE_LIBTOOL=	Yes

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples/policykit

.include <bsd.port.mk>
