# $OpenBSD: Makefile,v 1.3 1999/03/29 02:00:00 jasoni Exp $
#
DISTNAME=	licq-0.61
CATEGORIES=	net
MASTER_SITES=	http://licq.wibble.net/

MAINTAINER=	form@openbsd.org

LIB_DEPENDS=	qt:${PORTSDIR}/x11/qt

CONFIGURE_ENV+=	QT_MOC=/usr/X11R6/bin/moc

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

do-configure:
	@cd ${WRKSRC}; env INSTALL="/usr/bin/install" \
		sh ./configure --prefix=${PREFIX}

.include <bsd.port.mk>
