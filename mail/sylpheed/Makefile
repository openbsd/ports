# $OpenBSD: Makefile,v 1.2 2001/02/03 15:41:25 naddy Exp $

DISTNAME=	sylpheed-0.4.60
CATEGORIES=    	mail news x11
NEED_VERSION=	1.336
HOMEPAGE=	http://sylpheed.good-day.net

MAINTAINER=	Couderc Damien <couderc.damien@wanadoo.fr>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/sylpheed/

LIB_DEPENDS=	gtk.1.2::x11/gtk+

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
