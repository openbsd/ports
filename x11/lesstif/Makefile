# $OpenBSD: Makefile,v 1.25 1999/06/23 00:09:23 marc Exp $
# $FreeBSD: Makefile,v 1.17 1998/03/28 14:12:55 steve Exp $

DISTNAME=	lesstif-0.88.1
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.lesstif.org/pub/hungry/lesstif/srcdist/ \
		ftp://ftp.hungry.com/pub/hungry/lesstif/srcdist/ \
		ftp://linux.mathematik.tu-darmstadt.de/pub/linux/mirrors/misc/lesstif/srcdist/

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

USE_X11=	yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-debug --enable-build-12 \
		 --disable-build-20 --with-editres

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

# link the 1.2 motif libraries from $(prefix)/LessTif/Motif1.2/lib
# to $(prefix)/lib (where OpenBSD looks for them) and then run
# ldconfig to update the library cache
#
post-install:
.for lib in libMrm.a libMrm.so.1.2 libXm.a libXm.so.1.2
	if [ "x${NO_SHARED_LIBS}" = "x" ]; then \
	  ${LN} -sf ${PREFIX}/LessTif/Motif1.2/lib/lib/${lib} ${PREFIX}/lib; \
	  ${LDCONFIG} -m ${PREFIX}/lib; \
	fi
.endfor

.include <bsd.port.mk>
