# $OpenBSD: Makefile,v 1.2 1999/04/03 13:39:01 rohee Exp $
#
# Amaya, the W3C http://www.w3.org browser
#

DISTNAME	= amaya-src-1.4a
DIST_SUBDIR	= amaya # I have a good reasons to do so, dictionaries will go
                        # in the same dir
PKGNAME		= amaya-1.4a
CATEGORIES	= www

MAINTAINER	= rohee@OpenBSD.ORG

MASTER_SITES	= ftp://ftp.w3.org/pub/amaya/ \
                  ftp://ftp-eu.w3.org/pub/amaya/

NEED_VERSION	= 1.80

USE_MOTIF	= yes

#SEPARATE_BUILD=	concurrent

WRKSRC		= ${WRKDIR}/Thot
WRKBUILD	= ${WRKSRC}/obj

#USE_X11		= yes # not used :-(, all goes in /usr/local
GNU_CONFIGURE	= yes
USE_GMAKE	= yes
CONFIGURE_ARGS	= -with-amaya

do-configure:
	${MKDIR} ${WRKBUILD} && cd ${WRKBUILD} && ../configure ${CONFIGURE_ARGS}
	${SED} 's/^CFLAGS.*$\/CFLAGS = -O2/' ${WRKBUILD}/Options.orig >${WRKBUILD}/Options

.include <bsd.port.mk>
