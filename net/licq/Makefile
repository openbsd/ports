# $OpenBSD: Makefile,v 1.7 1999/12/03 14:24:38 espie Exp $

DISTNAME=	licq-0.61
CATEGORIES=	net
MASTER_SITES=	http://licq.wibble.net/

MAINTAINER=	ports@openbsd.org

LIB_DEPENDS=	qt.1.44:${PORTSDIR}/x11/qt

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	QT_MOC="/usr/X11R6/bin/moc"

.include <bsd.port.mk>
