# $OpenBSD: Makefile,v 1.8 1999/05/25 23:10:50 brad Exp $

DISTNAME=	ethereal-0.6.2
CATEGORIES=	net x11
MASTER_SITES=	http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

MAINTAINER=     jakob@crt.se

LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+

USE_X11=	yes
SYSCONFDIR=	${PREFIX}/share/ethereal
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR}
CONFIGURE_ENV=	GTK_CONFIG="${X11BASE}/bin/gtk-config"

.include <bsd.port.mk>
