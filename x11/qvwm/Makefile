# $OpenBSD: Makefile,v 1.3 2000/07/03 00:39:08 espie Exp $

DISTNAME=		qvwm-1.1.8
CATEGORIES=     	x11
NEED_VERSION=		1.310
HOMEPAGE=		http://www.qvwm.org/
MAINTAINER=		danh@nfol.com

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		ftp://ftp.qvwm.org/pub/qvwm/

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
FLAVORS=		esound imlib
FLAVOR?=

# the build-scheme will get confused otherwise
post-patch:
	rm ${WRKDIST}/src/yaccsrc.{cc,h}

SEPARATE_BUILD=flavored

.if ${FLAVOR:L:Mesound}
LIB_DEPENDS+=esd.2.::audio/esound
CONFIGURE_ARGS+=--with-esd-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS+=--without-esd
.endif
.if ${FLAVOR:L:Mimlib}
LIB_DEPENDS+=Imlib.19.::graphics/imlib
CONFIGURE_ARGS+=--with-imlib-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS+=--without-imlib
.endif

.include <bsd.port.mk>
