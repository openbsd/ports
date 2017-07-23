# $OpenBSD: Makefile,v 1.25 2017/07/23 09:26:30 espie Exp $

COMMENT=	Windows 95/98/NT like window manager

DISTNAME=	qvwm-1.1.8
REVISION =	5
CATEGORIES=     x11
MASTER_SITES=	${HOMEPAGE}/archive/qvwm/

HOMEPAGE=	http://www.csg.is.titech.ac.jp/~kourai/qvwm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xext Xpm Xss c m sndio ${COMPILER_LIBCXX}

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --without-esd \
		--without-imlib
CONFIGURE_ENV=	CPPFLAGS="-DUSE_SNDIO" LIBS="-lsndio"

# the build-scheme will get confused otherwise
post-patch:
	rm ${WRKDIST}/src/yaccsrc.{cc,h}

.include <bsd.port.mk>
