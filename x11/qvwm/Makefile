# $OpenBSD: Makefile,v 1.8 2002/12/29 20:31:41 fgsch Exp $

COMMENT=	"Windows 95/98/NT like window manager"

DISTNAME=	qvwm-1.1.8
CATEGORIES=     x11
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
LIB_DEPENDS+=	Imlib.19::graphics/imlib
CONFIGURE_ARGS+= --with-imlib-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS+= --without-imlib
.endif

.include <bsd.port.mk>
