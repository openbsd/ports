# New ports collection makefile for:   jpilot
# Version required:    0.96
# Date created:        23 August 1999
# Whom:                Alex Varju <varju@webct.com>
#
# $OpenBSD: Makefile,v 1.4 2000/03/05 18:30:23 espie Exp $
# $FreeBSD: ports/palm/jpilot/Makefile,v 1.6 1999/11/11 22:40:39 sumikawa Exp $

DISTNAME=	jpilot-0.96
CATEGORIES=	comms
NEED_VERSION=	1.223
MASTER_SITES=	http://jpilot.linuxbox.com/

MAINTAINER=	evan.cordes@UMICH.EDU

LIB_DEPENDS=	pisock.3:comms/pilot-link \
		gtk.1.2:x11/gtk+

USE_AUTOCONF=	yes

post-install:
	mkdir -p ${PREFIX}/share/doc/jpilot
	cp ${WRKSRC}/docs/plugin.html ${PREFIX}/share/doc/jpilot

.include <bsd.port.mk>
