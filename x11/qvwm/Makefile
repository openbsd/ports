# $OpenBSD: Makefile,v 1.14 2009/12/20 00:35:23 jakemsr Exp $

COMMENT=	Windows 95/98/NT like window manager

DISTNAME=	qvwm-1.1.8
PKGNAME=	${DISTNAME}p2
CATEGORIES=     x11
MASTER_SITES=	${HOMEPAGE}archive/qvwm/

HOMEPAGE=	http://www.csg.is.titech.ac.jp/~kourai/qvwm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		ICE SM X11 Xext Xss c m sndio stdc++

FLAVORS=	imlib
FLAVOR?=

USE_X11=	Yes

SEPARATE_BUILD=	flavored
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --without-esd
CONFIGURE_ENV=	CPPFLAGS="-DUSE_SNDIO" LIBS="-lsndio"

.if ${FLAVOR:L:Mimlib}
LIB_DEPENDS+=	Imlib.>=19::graphics/imlib
CONFIGURE_ARGS+= --with-imlib-prefix=${LOCALBASE}
WANTLIB+=	tiff ungif z jpeg m png
.else
CONFIGURE_ARGS+= --without-imlib
WANTLIB+=	Xpm
.endif

# the build-scheme will get confused otherwise
post-patch:
	rm ${WRKDIST}/src/yaccsrc.{cc,h}

.include <bsd.port.mk>
