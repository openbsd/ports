# $OpenBSD: Makefile,v 1.43 2017/11/21 00:12:59 naddy Exp $

COMMENT=		IDL parsing library

GNOME_PROJECT=		libIDL
GNOME_VERSION=		0.8.14
REVISION=		5

SHARED_LIBS +=	IDL-2                0.1      # .0.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  glib-2.0 iconv intl pcre pthread

EXTRACT_SUFX=		.tar.bz2

MODULES=		x11/gnome

LIB_DEPENDS=		devel/glib2


CONFIGURE_STYLE=	gnu

pre-build:
# Info files shipped in the official distfile aren't correctly 
# recoginzed by our ports infrastructure as a valid info files.
	rm ${WRKSRC}/*.info

.include <bsd.port.mk>
