# $OpenBSD: Makefile,v 1.3 1999/03/16 05:59:59 brad Exp $

DISTNAME=	ethereal-0.5.1
CATEGORIES=	net x11

# where to send comments about this port
#
MAINTAINER=     jakob@carlstedt.se

# where the source files and patches can be fetched
#
MASTER_SITES=	http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

# Dependencies
#
LIB_DEPENDS=	gtk:${PORTSDIR}/x11/gtk+

# build/configuration variables
#
USE_X11=	yes
GNU_CONFIGURE=	yes

# Ethereal puts what should be a shared data file in the "sysconfdir"
# I'm moving it to "${PREFIX}/share/ethereal"
#
CONFIGURE_ARGS=	--sysconfdir="${PREFIX}/share/ethereal"

.include <bsd.port.mk>
