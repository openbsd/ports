# $OpenBSD: Makefile,v 1.2 1999/01/30 20:12:21 marc Exp $
#
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
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

# Dependencies
#
LIB_DEPENDS=	gtk\\.1\\.:${PORTSDIR}/x11/gtk+

# build/configuration variables
#
USE_X11=	yes
GNU_CONFIGURE=	yes

# Ethereal puts what should be a shared data file in the "sysconfdir"
# I'm moving it to "${RREFIX}/share/ethereal"
#
CONFIGURE_ARGS=	--sysconfdir="${PREFIX}/share/ethereal"

.include <bsd.port.mk>
