# $OpenBSD: Makefile,v 1.44 2000/09/24 07:04:16 brad Exp $
# $FreeBSD: Makefile,v 1.17 1998/03/28 14:12:55 steve Exp $

DISTNAME=	lesstif-0.91.8
CATEGORIES=	x11
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.lesstif.org/pub/hungry/lesstif/srcdist/ \
		ftp://ftp.hungry.com/pub/hungry/lesstif/srcdist/ \
		ftp://linux.mathematik.tu-darmstadt.de/pub/linux/mirrors/misc/lesstif/srcdist/

HOMEPAGE=	http://www.lesstif.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

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

.include <bsd.port.mk>
