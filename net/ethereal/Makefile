# Ports collection makefile for:  ethereal
# Version required:     	  0.3.16
# Date created:			  8 Sep 1998
# Whom:				  Jakob Schlyter <jakob@carlstedt.se>
# More information:               http://ethereal.zing.org/

# What port/package will be created
#
DISTNAME=	ethereal-0.3.16
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

.include <bsd.port.mk>
