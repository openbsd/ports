# $OpenBSD: Makefile,v 1.27 2015/10/31 11:08:39 ajacoutot Exp $

COMMENT=		generic CSS parsing library for GNOME project

GNOME_PROJECT=		libcroco
GNOME_VERSION=		0.6.9

SHARED_LIBS +=  croco-0.6            4.0      # 3.1

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

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

.include <bsd.port.mk>
