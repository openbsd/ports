# $OpenBSD: Makefile,v 1.77 2017/09/07 12:29:31 ajacoutot Exp $

COMMENT=	jabber client written in pygtk
DISTNAME=	gajim-0.16.8
REVISION=	1
CATEGORIES=	net x11

HOMEPAGE=	https://www.gajim.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

MASTER_SITES=	${HOMEPAGE}/downloads/0.16/

# GPLv3 only
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	lang/python \
		textproc/intltool

PATCHORIG=	.orig.port

COMMON_DEPENDS=	databases/py-sqlite2 \
		devel/py-notify \
		net/avahi,,-python \
		net/py-dns \
		net/py-nbxmpp \
		security/py-crypto \
		security/py-openssl \
		security/py-gnupg \
		textproc/gtkspell \
		x11/dbus-python \
		x11/py-gtk2

BUILD_DEPENDS=	${COMMON_DEPENDS}

RUN_DEPENDS=	${COMMON_DEPENDS} \
		devel/desktop-file-utils \
		devel/py-asn1 \
		x11/gtk+3,-guic

.include <bsd.port.mk>
