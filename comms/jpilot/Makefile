# New ports collection makefile for:   jpilot
# Version required:    0.96
# Date created:        23 August 1999
# Whom:                Alex Varju <varju@webct.com>
#
# $FreeBSD: ports/palm/jpilot/Makefile,v 1.6 1999/11/11 22:40:39 sumikawa Exp $

DISTNAME=	jpilot-0.96
CATEGORIES=	comms
MASTER_SITES=	http://jpilot.linuxbox.com/

MAINTAINER=	evan.cordes@UMICH.EDU

LIB_DEPENDS=	pisock.3:${PORTSDIR}/comms/pilot-link \
		gtk.1.2:${PORTSDIR}/x11/gtk+

USE_AUTOCONF=	yes

post-install:
	${MKDIR} ${PREFIX}/share/doc/jpilot
	${CP} ${WRKSRC}/docs/plugin.html ${PREFIX}/share/doc/jpilot

.include <bsd.port.mk>
