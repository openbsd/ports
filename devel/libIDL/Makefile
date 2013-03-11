# $OpenBSD: Makefile,v 1.38 2013/03/11 10:50:09 espie Exp $

COMMENT=		IDL parsing library

GNOME_PROJECT=		libIDL
GNOME_VERSION=		0.8.14
REVISION=		1

SHARED_LIBS +=	IDL-2                0.1      # .0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=		pcre glib-2.0
LIB_DEPENDS=		devel/glib2


CONFIGURE_STYLE=	gnu

pre-build:
# Info files shipped in the official distfile aren't correctly 
# recoginzed by our ports infrastructure as a valid info files.
	@rm -f ${WRKSRC}/*.info

.include <bsd.port.mk>
