# OpenBSD makefile for:   explorer
# Version required:    0.72
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.13 2001/03/12 17:46:10 wilfried Exp $
#

DISTNAME=	explorer-0.72
CATEGORIES=	x11
NEED_VERSION=	1.305
MASTER_SITES=	ftp://jungfrau.ptf.hro.nl/pub/explorer/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

#LIB_DEPENDS=	qt.1.::x11/qt

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS+=	--datadir='$${DESTDIR}${PREFIX}/lib/X11/explorer' \
			--with-qt-include=${PREFIX}/include/X11/qt

ALL_TARGET=	explorer
USE_X11=	Yes

post-install:
	@/usr/bin/strip ${PREFIX}/bin/explorer

.include <bsd.port.mk>
