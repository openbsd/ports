# $OpenBSD: Makefile,v 1.16 2010/07/30 06:59:00 ajacoutot Exp $

COMMENT=	Windows 95/98/NT like window manager

DISTNAME=	qvwm-1.1.8
REVISION=	3
CATEGORIES=     x11
MASTER_SITES=	${HOMEPAGE}archive/qvwm/

HOMEPAGE=	http://www.csg.is.titech.ac.jp/~kourai/qvwm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		ICE SM X11 Xext Xpm Xss c m sndio stdc++

USE_X11=	Yes

SEPARATE_BUILD=	flavored
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --without-esd \
		--without-imlib
CONFIGURE_ENV=	CPPFLAGS="-DUSE_SNDIO" LIBS="-lsndio"

# the build-scheme will get confused otherwise
post-patch:
	rm ${WRKDIST}/src/yaccsrc.{cc,h}

.include <bsd.port.mk>
