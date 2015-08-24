# $OpenBSD: Makefile,v 1.25 2015/08/24 09:35:23 ajacoutot Exp $

COMMENT=		generic CSS parsing library for GNOME project

GNOME_PROJECT=		libcroco
GNOME_VERSION=		0.6.8
REVISION=		3

SHARED_LIBS +=	croco-0.6            4.0      # .3.1

CATEGORIES=		www textproc devel

HOMEPAGE=		http://www.freespiders.org/projects/libcroco/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 lzma m pcre pthread xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
