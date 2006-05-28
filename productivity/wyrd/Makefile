# $OpenBSD: Makefile,v 1.3 2006/05/28 15:41:33 avsm Exp $

COMMENT=		"curses calendar front-end to remind"

VERSION=		1.3.0
DISTNAME=		wyrd-${VERSION}
PKGNAME=		${DISTNAME}
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
