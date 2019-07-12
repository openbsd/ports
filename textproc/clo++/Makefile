# $OpenBSD: Makefile,v 1.23 2019/07/12 20:49:57 sthen Exp $

COMMENT=	command line parser generator

DISTNAME=	clo++-0.3.0
REVISION=	6
CATEGORIES=	textproc

HOMEPAGE=	http://pmade.org/~pjones/software/clo++/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv m pthread lzma ${COMPILER_LIBCXX} xml2>=6 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${HOMEPAGE}/download/

LIB_DEPENDS=	converters/libiconv \
		textproc/libxml

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clo++
	${INSTALL_DATA} ${WRKSRC}/doc/handbook.html ${PREFIX}/share/doc/clo++

.include <bsd.port.mk>
