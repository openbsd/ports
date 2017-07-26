# $OpenBSD: Makefile,v 1.21 2017/07/26 22:45:30 sthen Exp $

COMMENT=	command line parser generator

DISTNAME=	clo++-0.3.0
REVISION=	5
CATEGORIES=	textproc

HOMEPAGE=	http://pmade.org/~pjones/software/clo++/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv m pthread lzma ${COMPILER_LIBCXX} xml2>=6 z

MASTER_SITES=	${HOMEPAGE}/download/

LIB_DEPENDS=	converters/libiconv \
		textproc/libxml

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clo++
	${INSTALL_DATA} ${WRKSRC}/doc/handbook.html ${PREFIX}/share/doc/clo++

.include <bsd.port.mk>
