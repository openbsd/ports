# New ports collection makefile for:	lesstif
# Version required:	0.85
# Date created:		December 10, 1996
# Whom:			form@vs.itam.nsc.ru
#
# $OpenBSD: Makefile,v 1.9 1998/06/23 23:11:10 marc Exp $
# FreeBSD: Makefile,v 1.17 1998/03/28 14:12:55 steve Exp
#

DISTNAME=	lesstif-0.85
CATEGORIES=	x11

MAINTAINER=	form@vs.itam.nsc.ru

MASTER_SITES=	ftp://ftp.lesstif.org/pub/hungry/lesstif/srcdist/  \
		ftp://ftp.hungry.com/pub/hungry/lesstif/srcdist/

USE_X11=	yes

# see below for shared lib version information
#
GNU_CONFIGURE=		yes
CONFIGURE_ARGS=		--disable-debug
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=	--enable-shared
.endif
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		${SETENV}

.if defined(HAVE_MOTIF)
IS_INTERACTIVE=	yes
pre-install:
	@${ECHO} "***********************************************************"
	@${ECHO} "*                      W a r n i n g                      *"
	@${ECHO} "* This port will overwrite your Motif installation.       *"
	@${ECHO} "***********************************************************"
	@${ECHO} -n "Is this ok? (y/n) ==> "
	@(read ans; \
	  case x"$$ans" in \
	    xy*|xY*) \
	        return 0; \
	        ;; \
	    *) \
	        ${ECHO} "Okay, I won't install it then...."; \
	        ${ECHO} "(Don't worry about the following \"*** Error code 1\"s)"; \
	        return 1; \
	        ;; \
	  esac)
.endif

post-install:
	${MKDIR} ${PREFIX}/lib/X11/mwm ${PREFIX}/lib/X11/app-defaults
	${INSTALL_DATA} ${WRKSRC}/clients/Motif-1.2/mwm/system.mwmrc \
		${PREFIX}/lib/X11/mwm
	${INSTALL_DATA} ${WRKSRC}/clients/Motif-1.2/mwm/alt.map ${PREFIX}/lib/X11/mwm
	${INSTALL_DATA} ${WRKSRC}/clients/Motif-1.2/mwm/Mwm \
		${PREFIX}/lib/X11/app-defaults/Mwm
	/usr/bin/strip ${PREFIX}/lib/libXm.so.1.2 ${PREFIX}/lib/libMrm.so.1.2
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

#	Shared lib versions
#	dist version		BSD shared lib version
#	------------		----------------------
#	0.78			0.0
#	0.79			0.1
#	0.80			0.1
#       0.83			1.2
