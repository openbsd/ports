# $OpenBSD: Makefile,v 1.32 2012/02/26 15:09:08 ajacoutot Exp $

COMMENT=		XML parser that extends the Vala.Parser

DISTNAME=		gtkaml-0.5.91
CATEGORIES=		textproc

SHARED_LIBS +=  gtkaml               0.0      # 0.0

HOMEPAGE=		http://gtkaml.googlecode.com/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pthread vala-0.16 xml2 z

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext


BUILD_DEPENDS=		x11/gtk+2
LIB_DEPENDS=		lang/vala>=0.15.2

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
