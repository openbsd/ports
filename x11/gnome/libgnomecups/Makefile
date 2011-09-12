# $OpenBSD: Makefile,v 1.16 2011/09/12 12:04:17 jasper Exp $

COMMENT=		GNOME library for CUPS interaction

GNOME_PROJECT=		libgnomecups
GNOME_VERSION=		0.2.3

REVISION=		7

SHARED_LIBS=		gnomecups-1.0	1.0 # .1.0

CATEGORIES=		devel

HOMEPAGE=		http://projects.gnome.org/gnome-print/

# LGPLv2/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += asn1 crypto gssapi krb5 m pcre ssl z glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 cups

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2 \
    			print/cups

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
