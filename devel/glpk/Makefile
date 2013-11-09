# $OpenBSD: Makefile,v 1.8 2013/11/09 23:19:02 naddy Exp $

COMMENT=	GNU Linear Programming Kit

DISTNAME=	glpk-4.44
REVISION=	0
SHARED_LIBS=	glpk		6.0	# 29.0

CATEGORIES=	devel
HOMEPAGE=	https://www.gnu.org/software/glpk/index.html
MASTER_SITES=	${MASTER_SITE_GNU:=glpk/}

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m gmp>=7 z

LIB_DEPENDS=		devel/gmp


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-gmp \
			--with-zlib
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glpk
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/glpk
	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf ${PREFIX}/share/doc/glpk
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glpk/notes
	${INSTALL_DATA} ${WRKSRC}/doc/notes/*.pdf ${PREFIX}/share/doc/glpk/notes

.include <bsd.port.mk>
