# $OpenBSD: Makefile,v 1.5 1999/03/29 03:32:41 brad Exp $

DISTNAME=	licq-0.61
CATEGORIES=	net
MASTER_SITES=	http://licq.wibble.net/

MAINTAINER=	ports@openbsd.org

LIB_DEPENDS=	qt:${PORTSDIR}/x11/qt

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	INSTALL="/usr/bin/install" \
		QT_MOC=/usr/X11R6/bin/moc

.include <bsd.port.mk>
