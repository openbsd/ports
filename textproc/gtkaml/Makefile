# $OpenBSD: Makefile,v 1.28 2011/06/02 17:09:32 kili Exp $

COMMENT=		XML parser that extends the Vala.Parser

DISTNAME=		gtkaml-0.4.3
CATEGORIES=		textproc

HOMEPAGE=		http://gtkaml.googlecode.com/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c glib-2.0 gobject-2.0 gthread-2.0 pthread xml2 vala-0.12
WANTLIB += gio-2.0 gmodule-2.0

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext


BUILD_DEPENDS=		x11/gtk+2
LIB_DEPENDS=		lang/vala>=0.12.0

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
