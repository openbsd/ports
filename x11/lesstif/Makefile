# $OpenBSD: Makefile,v 1.19 1999/03/02 04:41:09 marc Exp $
# FreeBSD: Makefile,v 1.17 1998/03/28 14:12:55 steve Exp
#

DISTNAME=	lesstif-0.87.0
CATEGORIES=	x11

NEED_VERSION=	1.73

MAINTAINER=	form@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.lesstif.org/pub/hungry/lesstif/srcdist/  \
		ftp://ftp.hungry.com/pub/hungry/lesstif/srcdist/ \
		ftp://ftp.mathematik.th-darmstadt.de/pub/linux/mirrors/misc/lesstif/srcdist/

USE_X11=	yes

# see below for shared lib version information
#
GNU_CONFIGURE=		yes
CONFIGURE_ARGS=		--disable-debug
CONFIGURE_ARGS+=	--enable-build-12
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
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

.include <bsd.port.mk>
