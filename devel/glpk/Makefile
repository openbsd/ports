# $OpenBSD: Makefile,v 1.14 2021/12/08 10:41:18 espie Exp $

COMMENT=	GNU Linear Programming Kit

DISTNAME=	glpk-5.0
SHARED_LIBS=	glpk		8.0	# 43.1.3

CATEGORIES=	devel
HOMEPAGE=	https://www.gnu.org/software/glpk/index.html
MASTER_SITES=	${MASTER_SITE_GNU:=glpk/}

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=		c m gmp

LIB_DEPENDS=		devel/gmp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-gmp
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glpk
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/glpk
	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf ${PREFIX}/share/doc/glpk
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glpk/notes
	${INSTALL_DATA} ${WRKSRC}/doc/notes/*.pdf ${PREFIX}/share/doc/glpk/notes

.include <bsd.port.mk>
