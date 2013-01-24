# $OpenBSD: Makefile,v 1.21 2013/01/24 07:31:58 ajacoutot Exp $

COMMENT=		generic CSS parsing library for GNOME project

GNOME_PROJECT=		libcroco
GNOME_VERSION=		0.6.8
REVISION=		0

SHARED_LIBS +=	croco-0.6            4.0      # .3.1

CATEGORIES=		www textproc devel

HOMEPAGE=		http://www.freespiders.org/projects/libcroco/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c glib-2.0 m pcre pthread xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

CONFIGURE_STYLE=	gnu

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

.include <bsd.port.mk>
