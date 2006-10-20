# $OpenBSD: Makefile,v 1.23 2006/10/20 15:32:20 jasper Exp $

COMMENT=	"file manager with same look and feel as Windows95(tm)"

DISTNAME=	explorer-0.72
CATEGORIES=	x11
MASTER_SITES=	http://humppa.nl/distfiles/

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c m stdc++

MODULES=	x11/qt

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	--datadir='$${DESTDIR}${PREFIX}/lib/X11/explorer' \
		--with-qt-include=${MODQT_INCDIR} \
		--with-qt-lib=${MODQT_LIBDIR}

ALL_TARGET=	explorer
USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	@/usr/bin/strip ${PREFIX}/bin/explorer

.include <bsd.port.mk>
