# $OpenBSD: Makefile,v 1.3 2009/08/10 06:29:53 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin to play Speex files

V=		0.9.2b
DISTNAME=	speex-xmms-$V
PKGNAME=	xmms-speex-$Vp0
CATEGORIES=	audio

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://jzb.rapanden.dk/pub/

LIB_DEPENDS=	xmms.>=4::audio/xmms \
		speex.>=5::audio/speex
WANTLIB=	X11 Xext Xi gdk glib gmodule gtk iconv intl m ogg \
		pthread-stubs xcb

WRKDIST=	${WRKDIR}/speex-xmms
MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -fPIC -I${LOCALBASE}/include/speex -pthread"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xmms/Input
	${INSTALL_DATA} ${WRKBUILD}/libspeex.so ${PREFIX}/lib/xmms/Input/

.include <bsd.port.mk>
