# $OpenBSD: Makefile,v 1.6 2000/02/11 01:10:13 espie Exp $
#
# Amaya, the W3C http://www.w3.org browser
#

DISTNAME	= amaya-src-2.1
DIST_SUBDIR	= amaya # I have a good reasons to do so, dictionaries will go
                        # in the same dir
PKGNAME		= amaya-2.1
CATEGORIES	= www

MAINTAINER	= rohee@OpenBSD.ORG

MASTER_SITES	= ftp://ftp.w3.org/pub/amaya/ \
                  ftp://ftp-eu.w3.org/pub/amaya/

NEED_VERSION=	1.191

USE_MOTIF	= yes

#SEPARATE_BUILD=	concurrent

WRKDIST= 	${WRKDIR}/Amaya
WRKBUILD	= ${WRKSRC}/obj

#USE_X11		= yes # not used :-(, all goes in /usr/local
GNU_CONFIGURE	= yes
USE_GMAKE	= yes
CONFIGURE_ARGS	= -with-amaya

do-configure:
	mkdir -p ${WRKBUILD} && cd ${WRKBUILD} && ../configure ${CONFIGURE_ARGS}

.include <bsd.port.mk>


