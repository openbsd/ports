# $OpenBSD: Makefile,v 1.57 2009/08/11 08:42:08 ajacoutot Exp $
# $FreeBSD: Makefile,v 1.17 1998/03/28 14:12:55 steve Exp $

COMMENT=	API-compatible clone of the Motif toolkit

DISTNAME=	lesstif-0.92.6
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	Mrm	1.2 \
		Uil	1.2 \
		Xm	1.2
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lesstif/}

HOMEPAGE=	http://www.lesstif.org/

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xt c pthread-stubs xcb

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/lib/Xlt ${WRKSRC}/lib/Xbae
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-static \
		--enable-production \
		--enable-build-12 \
		--disable-build-20 \
		--disable-build-21 \
		--enable-default-12 \
		--disable-build-Xbae \
		--disable-build-Xlt \
		--disable-debug \
		--with-editres

.if defined(HAVE_MOTIF) && ${HAVE_MOTIF:L} == "yes"
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
