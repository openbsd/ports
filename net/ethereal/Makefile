# $OpenBSD: Makefile,v 1.7 1999/05/02 11:10:27 jakob Exp $

DISTNAME=	ethereal-0.6.1
CATEGORIES=	net x11

MAINTAINER=     jakob@crt.se

MASTER_SITES=	http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+

USE_X11=	yes
SYSCONFDIR=	${PREFIX}/share/ethereal
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR}
CONFIGURE_ENV=	GTK_CONFIG="${X11BASE}/bin/gtk-config"

.include <bsd.port.mk>
