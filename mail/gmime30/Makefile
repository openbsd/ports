# $OpenBSD: Makefile,v 1.10 2018/10/27 16:59:06 ajacoutot Exp $

COMMENT=		MIME messages creation and parsing library

GNOME_PROJECT=		gmime
GNOME_VERSION=		3.2.1
PKGNAME=		gmime30-${GNOME_VERSION}

SHARED_LIBS +=  gmime-3.0            2.1      # 201.0

CATEGORIES=		mail devel

HOMEPAGE=		http://spruce.sourceforge.net/gmime/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 iconv idn2 intl pcre pthread
WANTLIB += unistring z

MODULES=		x11/gnome

# XXX
# No rule to make target 'GMime-3.0.metadata', needed by 'gmime-3.0.vapi'
#MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2 \
			devel/libidn2 \
			security/gpgme

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
