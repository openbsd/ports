# $OpenBSD: Makefile,v 1.13 1999/09/24 14:37:07 jakob Exp $

DISTNAME=	ethereal-0.7.4
CATEGORIES=	net x11
MASTER_SITES=	http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

MAINTAINER=     jakob@openbsd.org

LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+

USE_X11=	yes
SYSCONFDIR=	${PREFIX}/share/ethereal
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR}
CONFIGURE_ENV=	GTK_CONFIG="${X11BASE}/bin/gtk-config"

.include <bsd.port.mk>
