# $OpenBSD: Makefile,v 1.1.1.1 2003/03/31 04:33:59 pvalchev Exp $

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
LIB_DEPENDS+= 		tcl83.1.3::lang/tcl/8.3 \
			tk83.1.3::x11/tk/8.3 
CONFIGURE_ARGS+=	--with-wish=${LOCALBASE}/bin/wish8.3
.endif

.include <bsd.port.mk>
