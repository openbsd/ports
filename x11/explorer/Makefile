# $OpenBSD: Makefile,v 1.19 2002/10/08 15:53:36 naddy Exp $

COMMENT=	"file manager with same look and feel as Windows95(tm)"

DISTNAME=	explorer-0.72
CATEGORIES=	x11
MASTER_SITES=	ftp://jungfrau.ptf.hro.nl/pub/explorer/

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	qt

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS=	--datadir='$${DESTDIR}${PREFIX}/lib/X11/explorer' \
		--with-qt-include=${MODQT_INCDIR} \
		--with-qt-lib=${MODQT_LIBDIR}

ALL_TARGET=	explorer
USE_X11=	Yes

post-install:
	@/usr/bin/strip ${PREFIX}/bin/explorer

.include <bsd.port.mk>
