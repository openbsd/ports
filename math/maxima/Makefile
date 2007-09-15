# $OpenBSD: Makefile,v 1.6 2007/09/15 18:44:36 steven Exp $

COMMENT=		GPL computer algebra system based on DOE Macsyma

VERSION=		5.9.0
DISTNAME=		maxima-${VERSION}
PKGNAME=		maxima-${VERSION}p1
CATEGORIES=		math

HOMEPAGE=		http://maxima.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=maxima/}

CONFIGURE_STYLE=	gnu

RUN_DEPENDS=		:clisp-*:lang/clisp 
BUILD_DEPENDS=		${RUN_DEPENDS}

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
