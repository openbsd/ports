# $OpenBSD: Makefile,v 1.2 2005/09/10 18:37:45 espie Exp $

COMMENT=		"curses calendar front-end to remind"

VERSION=		1.0.0
DISTNAME=		wyrd-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		productivity

HOMEPAGE=		http://www.eecs.umich.edu/~pelzlpj/wyrd/
MASTER_SITES=		http://www.eecs.umich.edu/~pelzlpj/wyrd/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m curses

MODULES=		lang/ocaml
CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
EXAMPLE_DIR=		${PREFIX}/share/examples/wyrd
BUILD_DEPENDS=		::misc/remind
RUN_DEPENDS=		::misc/remind

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/wyrdrc ${EXAMPLE_DIR}

.include <bsd.port.mk>
