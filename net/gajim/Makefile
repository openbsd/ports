# $OpenBSD: Makefile,v 1.71 2016/08/03 13:06:41 ajacoutot Exp $

COMMENT=	jabber client written in pygtk
DISTNAME=	gajim-0.15.4
CATEGORIES=	net x11
REVISION=	3

MASTER_SITES=	${HOMEPAGE}/downloads/0.15/

HOMEPAGE=	http://www.gajim.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	lang/python \
		textproc/intltool

COMMON_DEPENDS= databases/py-sqlite2 \
		net/py-dns \
		x11/dbus-python \
		x11/py-gtk2  \
		security/py-openssl \
		security/py-crypto \
		net/avahi,-python,no_mono,no_qt3,no_qt4 \
		textproc/gtkspell \
		devel/py-notify

BUILD_DEPENDS=	${COMMON_DEPENDS}

RUN_DEPENDS=	${COMMON_DEPENDS} \
		devel/desktop-file-utils \
		devel/py-asn1 \
		x11/gtk+3,-guic

.include <bsd.port.mk>
