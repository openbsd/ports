# $OpenBSD: Makefile,v 1.8 1999/03/25 02:09:36 marc Exp $
#

DISTNAME=       screen-3.7.6
CATEGORIES=	misc

MAINTAINER=	marc@OpenBSD.ORG

MASTER_SITES=   ftp://ftp.uni-erlangen.de/pub/utilities/screen/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= screen

# The autoconf.in files are too old to use the latest autoconf and
# without the latest autoconf we cant say "GNU_CONFIGURE" because
# configure doesn't know about sysconfdir.  So we do it this way
# instead
#
HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX}

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
