# $OpenBSD: Makefile,v 1.23 2019/07/12 20:45:57 sthen Exp $

COMMENT=		source code auditing tool

DISTNAME=		rats-2.3
REVISION=		0
CATEGORIES=		devel security

HOMEPAGE=		https://www.fortify.com/ssa-elements/threat-intelligence/rats.html

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c expat

MASTER_SITES=		https://www.fortify.com/downloads2/public/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--libdir=${WRKINST}${PREFIX}/share/rats \
			--datadir=${WRKINST}${PREFIX}/share/rats
MAKE_FLAGS=		CFLAGS='${CFLAGS} \
			  -DHAVE_LIBEXPAT=1 -DHAVE_EXPAT_H=1 \
			  -DDATADIR=\"${LOCALBASE}/share/rats\"'

ALL_TARGET=		rats
NO_TEST=		Yes
USE_GMAKE=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rats
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/rats

.include <bsd.port.mk>
