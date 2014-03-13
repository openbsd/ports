# $OpenBSD: Makefile,v 1.6 2014/03/13 17:33:27 sthen Exp $

COMMENT=	Apache module for non-ascii filename interoperability

REVISION=	3
DISTNAME=	mod_encoding-20021209
CATEGORIES=	www converters

HOMEPAGE=	http://webdav.todo.gr.jp/

# Apache-like
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}download/

SUBST_VARS=	PKGNAME

MODULES=	apache-module \
		converters/libiconv

MODAPACHE_NAME=	encoding

NO_TEST=	Yes

do-build:
	cd ${WRKSRC} && ${MODAPACHE_APXS} -Wc,"${CFLAGS}" -I${LOCALBASE}/include -c mod_encoding.c \
		-L${LOCALBASE}/lib -liconv -o ${WRKBUILD}/mod_encoding.so
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_encoding
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/mod_encoding
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
