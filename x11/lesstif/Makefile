# $OpenBSD: Makefile,v 1.23 1999/05/13 02:10:43 brad Exp $
# $FreeBSD: Makefile,v 1.17 1998/03/28 14:12:55 steve Exp $

DISTNAME=	lesstif-0.88.1
CATEGORIES=	x11

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

MASTER_SITES=	ftp://ftp.lesstif.org/pub/hungry/lesstif/srcdist/  \
		ftp://ftp.hungry.com/pub/hungry/lesstif/srcdist/ \
		ftp://linux.mathematik.tu-darmstadt.de/pub/linux/mirrors/misc/lesstif/srcdist/

USE_X11=	yes
SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-debug --enable-build-12
CONFIGURE_ENV=	${SETENV}

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

.include <bsd.port.mk>
