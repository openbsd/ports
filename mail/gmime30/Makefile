# $OpenBSD: Makefile,v 1.11 2018/11/01 09:14:37 ajacoutot Exp $

COMMENT=		MIME messages creation and parsing library

# hosted tarball on ftp.gnome.org is missing the vala files
GH_PROJECT=		gmime
GH_ACCOUNT=		jstedfast
GH_TAGNAME=		${GNOME_VERSION}
PORTROACH=		limitw:1,even 
MODULES +=		textproc/intltool

#GNOME_PROJECT=		gmime
GNOME_VERSION=		3.2.2
PKGNAME=		gmime30-${GNOME_VERSION}

SHARED_LIBS +=  gmime-3.0            2.1      # 201.1

CATEGORIES=		mail devel

HOMEPAGE=		http://spruce.sourceforge.net/gmime/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += assuan ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 iconv idn2 intl pcre pthread
WANTLIB += unistring z

MODULES +=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/glib2 \
			devel/libidn2 \
			security/gpgme

CONFIGURE_STYLE=	gnu

### autohell
USE_GMAKE=		Yes
AUTOCONF_VERSION=	2.65
AUTOMAKE_VERSION=	1.16
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			textproc/gtk-doc
pre-configure:
	cd ${WRKSRC} && touch touch ChangeLog && gtkdocize && \
		${SETENV} ${AUTOCONF_ENV} autoreconf -fi
###

.include <bsd.port.mk>
