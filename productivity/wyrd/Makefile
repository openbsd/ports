# $OpenBSD: Makefile,v 1.12 2009/06/20 22:05:11 avsm Exp $

COMMENT=		curses calendar front-end to remind

DISTNAME=		wyrd-1.4.4
PKGNAME=		${DISTNAME}p2
CATEGORIES=		productivity

HOMEPAGE=		http://pessimization.com/software/wyrd/

MAINTAINER=		Okan Demirmen <okan@openbsd.org>

MASTER_SITES=		${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses

MODULES=		lang/ocaml
CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

BUILD_DEPENDS=		::misc/remind
RUN_DEPENDS=		${BUILD_DEPENDS}

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wyrd
	${INSTALL_DATA} ${WRKSRC}/wyrdrc ${PREFIX}/share/examples/wyrd
	${INSTALL_DATA} ${WRKSRC}/wyrdrc ${DESTDIR}/${SYSCONFDIR}/wyrdrc

.include <bsd.port.mk>
