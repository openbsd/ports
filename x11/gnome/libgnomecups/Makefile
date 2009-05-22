# $OpenBSD: Makefile,v 1.10 2009/05/22 12:17:47 ajacoutot Exp $

COMMENT=		GNOME library for CUPS interaction

GNOME_PROJECT=		libgnomecups
GNOME_VERSION=		0.2.3
PKGNAME=		${DISTNAME}p4
SHARED_LIBS=		gnomecups-1.0	1.0 # .1.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

# LGPLv2/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 crypto gcrypt gnutls gpg-error gssapi krb5 m pcre
WANTLIB += tasn1 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		glib-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
    			cups::print/cups

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
