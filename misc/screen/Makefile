# OpenBSD makefile for:	screen
# Version required:     3.7.6
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.5 1999/02/20 00:42:29 fgsch Exp $
#

DISTNAME=       screen-3.7.6
CATEGORIES=	misc
MASTER_SITES=   ftp://ftp.uni-erlangen.de/pub/utilities/screen/ \
		${MASTER_SITE_GNU}

MAINTAINER=	gene@OpenBSD.ORG

GNU_CONFIGURE=	yes
MAN1=		screen.1

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/screen.info ${PREFIX}/info/dir
	@${MKDIR} ${PREFIX}/lib/screen
	@${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc ${PREFIX}/lib/screen/screenrc
	@${INSTALL_DATA} ${WRKSRC}/terminfo/screencap ${PREFIX}/lib/screen
	@${ECHO} ""
	@${ECHO} "*** The latest version of the screenrc and screencap files"
	@${ECHO} "*** can be found ${PREFIX}/lib/screen"
	@if [ -f /etc/screenrc ]; then \
	  ${ECHO} "*** Your /etc/screenrc has NOT been changed"; \
	 else \
	  cp ${PREFIX}/lib/screen/screenrc /etc; \
	  ${ECHO} "*** screenrc has been copied into /etc"; \
	 fi
	@${ECHO} ""

.include <bsd.port.mk>
