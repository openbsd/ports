# OpenBSD makefile for:	screen
# Version required:     3.7.4
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.2 1997/11/19 01:07:50 joey Exp $
#

DISTNAME=       screen-3.7.4
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
	@if [ -f ${PREFIX}/etc/screenrc ]; then \
	 @echo "Copying ${PREFIX}/etc/screenrc to ${PREFIX}/etc/screenrc.old.";\
	 ${CP} ${PREFIX}/etc/screenrc ${PREFIX}/etc/screenrc.old; \
	fi
	@echo "Installing ${PREFIX}/etc/screenrc."
	${CP} ${WRKSRC}/etc/etcscreenrc ${PREFIX}/etc/screenrc

.include <bsd.port.mk>
