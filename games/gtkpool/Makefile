# $OpenBSD: Makefile,v 1.3 2001/03/16 19:47:10 brad Exp $

DISTNAME=	gtkpool-0.3.4
CATEGORIES=	games x11
NEED_VERSION=	1.359
MASTER_SITES=	${HOMEPAGE}	

HOMEPAGE=	http://gtkpool.seul.org/

LIB_DEPENDS=	gtk.1.2::x11/gtk+

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FLAGS=	CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
		LDFLAGS="-lossaudio"

USE_X11=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gtkpool
	${INSTALL_PROGRAM} ${WRKSRC}/gtkpool ${PREFIX}/bin/gtkpool
	${INSTALL_DATA} ${WRKSRC}/pixmaps/* ${PREFIX}/lib/gtkpool

.include <bsd.port.mk>
