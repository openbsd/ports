# OpenBSD makefile for:   explorer
# Version required:    0.72
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.17 2001/06/20 01:43:38 pvalchev Exp $
#

COMMENT=	"file manager with same look and feel as Windows95(tm)"

DISTNAME=	explorer-0.72
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	ftp://jungfrau.ptf.hro.nl/pub/explorer/

MAINTAINER=	ports@openbsd.org

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	qt.1.::x11/qt

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS+=	--datadir='$${DESTDIR}${PREFIX}/lib/X11/explorer' \
			--with-qt-include=${PREFIX}/include/X11/qt \
			--with-qt-lib=${PREFIX}/lib/qt \

ALL_TARGET=	explorer
USE_X11=	Yes

post-install:
	@/usr/bin/strip ${PREFIX}/bin/explorer

.include <bsd.port.mk>
