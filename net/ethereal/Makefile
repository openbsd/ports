# $OpenBSD: Makefile,v 1.5 1999/04/05 11:16:21 jakob Exp $

DISTNAME=	ethereal-0.5.1
CATEGORIES=	net x11

MAINTAINER=     jakob@crt.se

MASTER_SITES=	http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

LIB_DEPENDS=	gtk:${PORTSDIR}/x11/gtk+

USE_X11=	yes
SYSCONFDIR=	${PREFIX}/share/ethereal
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR}

.include <bsd.port.mk>
