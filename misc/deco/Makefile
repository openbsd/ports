# $OpenBSD: Makefile,v 1.26 2019/07/12 20:47:49 sthen Exp $

COMMENT=	Demos Commander, a free Norton Commander clone

DISTNAME=	deco383
PKGNAME=	deco-3.8.3
REVISION=	1
CATEGORIES=	misc
MASTER_SITES=	https://distfiles.nl/
EXTRACT_SUFX=	.tgz

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--libdir=${PREFIX}/share

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/deco ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/deco/help
	${INSTALL_DATA} ${WRKBUILD}/menu ${PREFIX}/share/deco
	${INSTALL_DATA} ${WRKBUILD}/profile ${PREFIX}/share/deco
.for f in general edit view hexview
	${INSTALL_DATA} ${WRKBUILD}/help/*.${f} ${PREFIX}/share/deco/help
.endfor
	${INSTALL_MAN} ${WRKBUILD}/ref.man ${PREFIX}/man/man1/deco.1

.include <bsd.port.mk>
