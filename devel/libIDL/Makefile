# $OpenBSD: Makefile,v 1.39 2013/09/28 08:50:45 ajacoutot Exp $

COMMENT=		IDL parsing library

GNOME_PROJECT=		libIDL
GNOME_VERSION=		0.8.14
REVISION=		2

SHARED_LIBS +=	IDL-2                0.1      # .0.0

CATEGORIES=		devel

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
