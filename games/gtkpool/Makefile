# $OpenBSD: Makefile,v 1.1.1.1 2001/02/04 18:35:52 reinhard Exp $

DISTNAME=	gtkpool-0.3.4
CATEGORIES=	games x11
NEED_VERSION=	1.352

HOMEPAGE=	http://gtkpool.seul.org/

MASTER_SITES=	${HOMEPAGE}	

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

FAKE_FLAGS=     PREFIX="${WRKINST}${PREFIX}"

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+

USE_X11=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gtkpool ${PREFIX}/bin/gtkpool
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gtkpool
	${INSTALL_DATA} ${WRKSRC}/pixmaps/* ${PREFIX}/lib/gtkpool

.include <bsd.port.mk>
