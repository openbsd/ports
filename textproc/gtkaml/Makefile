# $OpenBSD: Makefile,v 1.7 2008/12/17 13:55:02 ajacoutot Exp $

COMMENT=		XML parser that extends the Vala.Parser

DISTNAME=		gtkaml-0.2.2.2
CATEGORIES=		textproc

HOMEPAGE=		http://gtkaml.googlecode.com/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

WANTLIB=		c glib-2.0 gobject-2.0 xml2

LIB_DEPENDS=		vala.>=1::lang/vala

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
