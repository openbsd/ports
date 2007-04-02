# $OpenBSD: Makefile,v 1.5 2007/04/02 19:27:43 martynas Exp $

COMMENT=		"curses calendar front-end to remind"

DISTNAME=		wyrd-1.4.1
CATEGORIES=		productivity

HOMEPAGE=		http://www.eecs.umich.edu/~pelzlpj/wyrd/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

MASTER_SITES=		${HOMEPAGE}

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

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/wyrdrc ${EXAMPLE_DIR}

.include <bsd.port.mk>
