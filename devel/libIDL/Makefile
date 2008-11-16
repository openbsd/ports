# $OpenBSD: Makefile,v 1.26 2008/11/16 21:44:14 jasper Exp $

COMMENT=		IDL parsing library

GNOME_PROJECT=		libIDL
GNOME_VERSION=		0.8.11
SHARED_LIBS +=	IDL-2                0.1      # .0.0
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=		pcre
LIB_DEPENDS=		glib-2.0::devel/glib2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
# Info files shipped in the official distfile aren't correctly 
# recoginzed by our ports infrastructure as a valid info files.
	@rm -f ${WRKSRC}/*.info

.include <bsd.port.mk>
