# $OpenBSD: Makefile,v 1.1.1.1 1999/09/18 19:44:18 rohee Exp $
# Original from: Bruno Rohée

PKGNAME=	gqmpeg-0.6.3
DISTNAME=	${PKGNAME}.src
EXTRACT_SUFX=	.tgz

CATEGORIES=     audio

MAINTAINER=	rohee@OpenBSD.ORG

HOMEPAGE=	http://gqview.netpedia.net/mpeg-over.html

MASTER_SITES=	http://gqview.netpedia.net/

RUN_DEPENDS=	mpg123:${PORTSDIR}/audio/mpg123
LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib \
		gtk:${PORTSDIR}/x11/gtk+ \
		gdk_imlib.1.9:${PORTSDIR}/graphics/imlib

NO_CONFIGURE=	yes

WRKSRC=		${WRKDIR}/${PKGNAME}

ALL_TARGET=	gqmpeg

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gqmpeg ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/plugin/gqmpeg-shoutcast-plugin.sh ${PREFIX}/bin
	${MKDIR} ${PREFIX}/share/doc/gqmpeg
	${INSTALL_DATA}	${WRKSRC}/ChangeLog ${PREFIX}/share/doc/gqmpeg
	${INSTALL_DATA}	${WRKSRC}/COPYING ${PREFIX}/share/doc/gqmpeg
	${INSTALL_DATA}	${WRKSRC}/FAQ ${PREFIX}/share/doc/gqmpeg
	${INSTALL_DATA}	${WRKSRC}/README ${PREFIX}/share/doc/gqmpeg
	${INSTALL_DATA}	${WRKSRC}/SKIN-SPECS ${PREFIX}/share/doc/gqmpeg

.include <bsd.port.mk>
