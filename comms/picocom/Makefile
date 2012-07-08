# $OpenBSD: Makefile,v 1.1.1.1 2012/07/08 18:19:18 lteo Exp $
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
PERMIT_PACKAGE_FTP	= Yes
PERMIT_DISTFILES_CDROM	= Yes
PERMIT_DISTFILES_FTP	= Yes

WANTLIB			= c
NO_REGRESS		= Yes

MAKE_FLAGS		= CC="${CC}" CFLAGS="${CFLAGS}"
MAKE_ENV		= LDFLAGS="${LDFLAGS}"
USE_GROFF		= Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/picocom.8 ${PREFIX}/man/man8/picocom.8
	${INSTALL_PROGRAM} ${WRKDIST}/picocom ${PREFIX}/bin/picocom


.include <bsd.port.mk>
