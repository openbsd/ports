# $OpenBSD: Makefile,v 1.3 2013/03/11 01:30:27 espie Exp $
# Original from: Nick Patavalis (npat@efault.net)
#
COMMENT			= minimal dumb-terminal emulation program

DISTNAME		= picocom-1.6
CATEGORIES		= comms
MASTER_SITES		= http://picocom.googlecode.com/files/

HOMEPAGE		= http://code.google.com/p/picocom/
MAINTAINER		= Kyle Isom <coder@kyleisom.net>

# GPLv2+
PERMIT_PACKAGE_CDROM	= Yes

WANTLIB			= c
NO_TEST			= Yes

MAKE_FLAGS		= CC="${CC}" CFLAGS="${CFLAGS}"
MAKE_ENV		= LDFLAGS="${LDFLAGS}"
USE_GROFF		= Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/picocom.8 ${PREFIX}/man/man8/picocom.8
	${INSTALL_PROGRAM} ${WRKDIST}/picocom ${PREFIX}/bin/picocom


.include <bsd.port.mk>
