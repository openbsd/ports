# $OpenBSD: Makefile,v 1.9 2004/10/24 14:52:46 naddy Exp $

COMMENT=	"GTK2-based scientific calculator"

DISTNAME=	galculator-1.2.4
CATEGORIES=	math
HOMEPAGE=	http://galculator.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galculator/}

LIB_DEPENDS=	glade-2.0.0.0::devel/libglade2
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

SEPARATE_BUILD=	simple
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
