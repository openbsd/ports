# $OpenBSD: Makefile,v 1.1.1.1 2003/06/25 21:58:05 naddy Exp $

COMMENT=	"GTK2-based scientific calculator"

DISTNAME=	galculator-1.1.1
CATEGORIES=	math
HOMEPAGE=	http://galculator.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galculator/}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	glade-2.0.0.1::devel/libglade2

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
