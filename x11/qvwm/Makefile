# $OpenBSD: Makefile,v 1.13 2009/03/07 15:37:38 jasper Exp $

COMMENT=	Windows 95/98/NT like window manager

DISTNAME=	qvwm-1.1.8
PKGNAME=	${DISTNAME}p1
CATEGORIES=     x11
MASTER_SITES=	ftp://ftp.qvwm.org/pub/qvwm/

HOMEPAGE=	http://www.qvwm.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		ICE SM X11 Xext Xss c m stdc++

FLAVORS=	esound imlib
FLAVOR?=

USE_X11=	Yes

SEPARATE_BUILD=	flavored
CONFIGURE_STYLE= gnu

# the build-scheme will get confused otherwise
post-patch:
	rm ${WRKDIST}/src/yaccsrc.{cc,h}

.if ${FLAVOR:L:Mesound}
LIB_DEPENDS+=	esd.>=2::audio/esound
CONFIGURE_ARGS+= --with-esd-prefix=${LOCALBASE}
WANTLIB+=	audiofile sndio
.else
CONFIGURE_ARGS+= --without-esd
.endif

.if ${FLAVOR:L:Mimlib}
LIB_DEPENDS+=	Imlib.>=19::graphics/imlib
CONFIGURE_ARGS+= --with-imlib-prefix=${LOCALBASE}
WANTLIB+=	tiff ungif z jpeg m png
.else
CONFIGURE_ARGS+= --without-imlib
WANTLIB+=	Xpm
.endif

.include <bsd.port.mk>
