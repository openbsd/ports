# $OpenBSD: Makefile,v 1.2 2003/12/27 23:31:39 jose Exp $

COMMENT=		"GPL computer algebra system based on DOE Macsyma"

VERSION=		5.9.0
DISTNAME=		maxima-${VERSION}
CATEGORIES=		math

HOMEPAGE=		http://maxima.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=maxima/}

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		:clisp-*:lang/clisp 
RUN_DEPENDS=		${BUILD_DEPENDS}

SUBST_VARS=		VERSION

FLAVORS=		no_x11
FLAVOR?=

CONFIGURE_ARGS+=	--enable-clisp 
.if !${FLAVOR:L:Mno_x11}
USE_X11=		Yes
LIB_DEPENDS+= 		tcl84::lang/tcl/8.4 \
			tk84::x11/tk/8.4 
CONFIGURE_ARGS+=	--with-wish=${LOCALBASE}/bin/wish8.4
.endif

.include <bsd.port.mk>
