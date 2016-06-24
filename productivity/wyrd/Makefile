# $OpenBSD: Makefile,v 1.23 2016/06/24 15:59:13 krw Exp $

COMMENT=		curses calendar front-end to remind

DISTNAME=		wyrd-1.4.6
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

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
CONFIGURE_ENV += ""
.else
CONFIGURE_ENV += OCAMLOPT=no
.endif

BUILD_DEPENDS=		${RUN_DEPENDS} lang/ocaml-camlp4
RUN_DEPENDS=		misc/remind

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wyrd
	${INSTALL_DATA} ${WRKSRC}/wyrdrc ${PREFIX}/share/examples/wyrd

.include <bsd.port.mk>
