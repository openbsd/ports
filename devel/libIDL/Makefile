# $OpenBSD: Makefile,v 1.24 2007/10/31 21:54:11 winiger Exp $

COMMENT=		IDL parsing library

DISTNAME=		libIDL-0.8.8
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	IDL-2                0.1      # .0.0
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libIDL/0.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
WANTLIB=		pcre
LIB_DEPENDS=		glib-2.0::devel/glib2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
# Info files shipped in the official distfile aren't correctly 
# recoginzed by our ports infrastructure as a valid info files.
	@rm -f ${WRKSRC}/*.info

.include <bsd.port.mk>
