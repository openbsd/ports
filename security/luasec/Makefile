# $OpenBSD: Makefile,v 1.1.1.1 2009/09/06 14:29:32 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	lua binding to OpenSSL to provide TLS/SSL communication
DISTNAME=	luasec-0.3.3
CATEGORIES=	security
MASTER_SITES=	http://luaforge.net/frs/download.php/4160/

HOMEPAGE=	http://www.inf.puc-rio.br/~brunoos/luasec/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	lang/lua
RUN_DEPENDS+=	::net/luasocket
WANTLIB+=	crypto ssl

MAKE_ENV+=	INCDIR="-I${LOCALBASE}/include/" SAVECFLAGS="${CFLAGS}"
ALL_TARGET=	bsd
LIBDIR=		${PREFIX}/lib/lua/5.1
SHAREDIR=	${PREFIX}/share/lua/5.1
EXAMPLEDIR=	${PREFIX}/share/examples/luasec

do-install:
	${INSTALL_DATA_DIR} ${LIBDIR} ${SHAREDIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/src/ssl.so ${LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/src/ssl.lua ${SHAREDIR}
	cd ${WRKSRC}/samples && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${EXAMPLEDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${EXAMPLEDIR}/{} \;

.include <bsd.port.mk>
