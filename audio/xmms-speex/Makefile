# $OpenBSD: Makefile,v 1.12 2015/05/05 17:00:16 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin to play Speex files

V=		0.9.2b
DISTNAME=	speex-xmms-$V
PKGNAME=	xmms-speex-$V
REVISION=	5
CATEGORIES=	audio

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= X11 Xext Xi c gdk glib gmodule gtk m ogg pthread speex xcb
WANTLIB+= xmms

MASTER_SITES=	http://jzb.rapanden.dk/pub/

LIB_DEPENDS=	audio/xmms \
		audio/speex

MODULES=	devel/gettext

WRKDIST=	${WRKDIR}/speex-xmms
MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -fPIC -I${LOCALBASE}/include/speex"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xmms/Input
	${INSTALL_DATA} ${WRKBUILD}/libspeex.so ${PREFIX}/lib/xmms/Input/

.include <bsd.port.mk>
