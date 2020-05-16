# $OpenBSD: Makefile,v 1.35 2020/05/16 18:46:55 ajacoutot Exp $

# !!! CANNOT BE REMOVED until legacy arches move to the new librsvg version

COMMENT=		generic CSS parsing library for GNOME project

GNOME_PROJECT=		libcroco
GNOME_VERSION=		0.6.13

SHARED_LIBS +=  croco-0.6            4.0      # 3.1

CATEGORIES=		www textproc devel

HOMEPAGE=		http://www.freespiders.org/projects/libcroco/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c glib-2.0 iconv intl lzma m pcre pthread xml2 z

MODULES=		x11/gnome

LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

CONFIGURE_STYLE=	gnu

# error: -Bsymbolic-functions requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

.include <bsd.port.mk>
