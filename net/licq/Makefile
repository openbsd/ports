# $OpenBSD: Makefile,v 1.6 1999/06/07 21:05:09 brad Exp $

DISTNAME=	licq-0.61
CATEGORIES=	net
MASTER_SITES=	http://licq.wibble.net/

MAINTAINER=	ports@openbsd.org

LIB_DEPENDS=	qt.1.44:${PORTSDIR}/x11/qt

USE_EGCC=	yes
USE_EGXX=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	QT_MOC="/usr/X11R6/bin/moc"

.include <bsd.port.mk>
