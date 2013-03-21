# $OpenBSD: Makefile,v 1.59 2013/03/21 08:46:34 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	jabber client written in pygtk
DISTNAME=	gajim-0.15.2
CATEGORIES=	net x11

MASTER_SITES=	${HOMEPAGE}/downloads/0.15/

HOMEPAGE=	http://www.gajim.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

USE_GMAKE=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	lang/python \
		textproc/intltool

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/py-sqlite2 \
		devel/desktop-file-utils \
		net/py-dns \
		x11/dbus-python \
		x11/py-gtk2  \
		security/py-openssl \
		security/py-crypto \
		net/avahi,-gui,no_mono,no_qt3,no_qt4 \
		textproc/gtkspell \
		devel/py-notify \
		x11/gtk+2,-guic

.include <bsd.port.mk>
