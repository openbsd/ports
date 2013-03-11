# $OpenBSD: Makefile,v 1.19 2013/03/11 11:37:55 espie Exp $

COMMENT=		curses calendar front-end to remind

DISTNAME=		wyrd-1.4.5
REVISION=		0
CATEGORIES=		productivity

HOMEPAGE=		http://pessimization.com/software/wyrd/

MAINTAINER=		Okan Demirmen <okan@openbsd.org>

MASTER_SITES=		${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ncurses

MODULES=		lang/ocaml
CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		misc/remind

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wyrd
	${INSTALL_DATA} ${WRKSRC}/wyrdrc ${PREFIX}/share/examples/wyrd

.include <bsd.port.mk>
