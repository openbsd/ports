# OpenBSD makefile for:   explorer
# Version required:    0.72
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 1999/11/14 23:35:12 turan Exp $
#

DISTNAME=	explorer-0.72
CATEGORIES=	x11
MASTER_SITES=	ftp://jungfrau.ptf.hro.nl/pub/explorer/

MAINTAINER=	ports@openbsd.org

LIB_DEPENDS=	qt\\.1\\.:${PORTSDIR}/x11/qt

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	${SETENV}
CONFIGURE_ARGS+=	--datadir=${PREFIX}/lib/X11/explorer \
			--with-qt-include=${PREFIX}/include/X11/qt

ALL_TARGET=	explorer
USE_X11=	yes

post-install:
	@/usr/bin/strip ${PREFIX}/bin/explorer

.include <bsd.port.mk>
