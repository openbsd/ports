# $OpenBSD: Makefile,v 1.17 2012/09/01 14:36:58 ajacoutot Exp $

COMMENT=		generic CSS parsing library for GNOME project

GNOME_PROJECT=		libcroco
GNOME_VERSION=		0.6.5
SHARED_LIBS +=	croco-0.6            4.0      # .3.1
CATEGORIES=		www textproc devel
REVISION=	0

HOMEPAGE=		http://www.freespiders.org/projects/libcroco/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c glib-2.0 m pcre pthread xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--disable-Bsymbolic \
			--disable-maintainer-mode

.include <bsd.port.mk>
