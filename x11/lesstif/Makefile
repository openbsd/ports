# OpenBSD makefile for:	lesstif
# Version required:	0.82
# Date created:		December 1, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 1998/02/13 15:13:29 niklas Exp $
#

DISTNAME=	lesstif-0.82
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.lesstif.org/pub/hungry/lesstif/  \
		ftp://ftp.hungry.com/pub/hungry/lesstif/

MAINTAINER=	angelos@openbsd.org

#	see below for shared lib version information

MANUAL_PACKAGE_BUILD=	do not want to install during interactive build
GNU_CONFIGURE=  yes
USE_X11=	yes
# change this and remove the strip statement in post-install for debugging
CONFIGURE_ENV=	${SETENV} CCFLAGS="-O -pipe"
# static library on alpha
.ifdef (${MACHINE_ARCH} == "alpha")
CONFIGURE_ARGS= --with-static --without-shared
.endif

.if defined(HAVE_MOTIF)
IS_INTERACTIVE=	yes
pre-fetch:
	@echo "***********************************************************"
	@echo "*                      W a r n i n g                      *"
	@echo "* This port will overwrite your Motif installation.       *"
	@echo "***********************************************************"
	@echo -n "Is this ok? (y/n) ==> "
	@(read ans; \
	  case x"$$ans" in \
	    xy*|xY*) \
	        return 0; \
	        ;; \
	    *) \
	        echo "Okay, I won't install it then...."; \
	        echo "(Don't worry about the following \"*** Error code 1\"s)"; \
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
.if (${MACHINE_ARCH} != "alpha")
	/usr/bin/strip ${PREFIX}/lib/libXm.so.0.1 ${PREFIX}/lib/libMrm.so.0.1
.endif
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>


#	Shared lib versions
#	dist version		BSD shared lib version
#	------------		----------------------
#	0.78			0.0
#	0.79			0.1
#	0.80			0.1
