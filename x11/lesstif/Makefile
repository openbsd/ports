# $OpenBSD: Makefile,v 1.39 2000/06/20 01:24:44 brad Exp $
# $FreeBSD: Makefile,v 1.17 1998/03/28 14:12:55 steve Exp $

DISTNAME=	lesstif-0.91.0
CATEGORIES=	x11
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.lesstif.org/pub/hungry/lesstif/srcdist/obsolete/ \
		ftp://ftp.hungry.com/pub/hungry/lesstif/srcdist/obsolete/ \
		ftp://linux.mathematik.tu-darmstadt.de/pub/linux/mirrors/misc/lesstif/srcdist/obsolete/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--enable-static --enable-production --enable-build-12 \
		--disable-build-20 --disable-build-Xbae --disable-build-Xlt \
		--disable-debug --with-editres

.if defined(HAVE_MOTIF)
IS_INTERACTIVE=	Yes

pre-install:
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

STATIC_LIBS=	libMrm.a libXm.a
SHARED_LIBS=	libMrm.so.1.2 libXm.so.1.2

# link the 1.2 motif libraries from $(prefix)/LessTif/Motif1.2/lib
# to $(prefix)/lib (where OpenBSD looks for them) and then run
# ldconfig to update the library cache

post-install:
	@rm -f ${PREFIX}/lib/libMrm.so
	@rm -f ${PREFIX}/lib/libXm.so
.for lib in ${STATIC_LIBS}
	@ln -sf ${TRUEPREFIX}/LessTif/Motif1.2/lib/${lib} ${PREFIX}/lib
.endfor
.for lib in ${SHARED_LIBS}
	@if [ "x${NO_SHARED_LIBS}" = "x" ]; then \
	  ln -sf ${TRUEPREFIX}/LessTif/Motif1.2/lib/${lib} ${PREFIX}/lib; \
	 fi
.endfor

.include <bsd.port.mk>
