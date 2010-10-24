# $OpenBSD: Makefile,v 1.22 2010/10/24 21:38:06 ajacoutot Exp $

COMMENT=		XML parser that extends the Vala.Parser

DISTNAME=		gtkaml-0.2.11
CATEGORIES=		textproc

HOMEPAGE=		http://gtkaml.googlecode.com/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c glib-2.0 gobject-2.0 gthread-2.0 pthread xml2 vala-0.10

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext


BUILD_DEPENDS=		::x11/gtk+2
LIB_DEPENDS=		:vala->=0.10.0:lang/vala

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
