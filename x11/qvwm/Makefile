# $OpenBSD: Makefile,v 1.5 2000/09/23 20:03:20 danh Exp $

DISTNAME=	qvwm-1.1.8
CATEGORIES=     x11
NEED_VERSION=	1.334
MASTER_SITES=	ftp://ftp.qvwm.org/pub/qvwm/

HOMEPAGE=	http://www.qvwm.org/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

FLAVORS=	esound imlib
FLAVOR?=

USE_X11=	Yes

SEPARATE_BUILD=	flavored
CONFIGURE_STYLE= gnu

# the build-scheme will get confused otherwise
post-patch:
	rm ${WRKDIST}/src/yaccsrc.{cc,h}

.if ${FLAVOR:L:Mesound}
LIB_DEPENDS+=	esd.2.::audio/esound
CONFIGURE_ARGS+= --with-esd-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS+= --without-esd
.endif

.if ${FLAVOR:L:Mimlib}
LIB_DEPENDS+=	Imlib.19.::graphics/imlib
CONFIGURE_ARGS+= --with-imlib-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS+= --without-imlib
.endif

.include <bsd.port.mk>
