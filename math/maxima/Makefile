# $OpenBSD: Makefile,v 1.7 2007/11/25 14:56:09 jasper Exp $

COMMENT=		GPL computer algebra system based on DOE Macsyma

VERSION=		5.13.0
DISTNAME=		maxima-${VERSION}
CATEGORIES=		math

HOMEPAGE=		http://maxima.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=maxima/}

USE_GMAKE=		yes
CONFIGURE_STYLE=	gnu

RUN_DEPENDS=		:clisp->=2.42:lang/clisp 
BUILD_DEPENDS=		${RUN_DEPENDS}
WANTLIB +=		c m ncurses readline sigsegv

SUBST_VARS=		VERSION

FLAVORS=		no_x11
FLAVOR?=

CONFIGURE_ARGS+=	--enable-clisp 
.if !${FLAVOR:L:Mno_x11}
USE_X11=		Yes
RUN_DEPENDS+= 		:tcl-8.4.*:lang/tcl/8.4 \
			:tk-8.4.*:x11/tk/8.4 
BUILD_DEPENDS=		${RUN_DEPENDS}
CONFIGURE_ARGS+=	--with-wish=${LOCALBASE}/bin/wish8.4
.endif

.include <bsd.port.mk>
