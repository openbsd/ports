# $OpenBSD: Makefile,v 1.16 2015/04/21 18:19:27 sthen Exp $

COMMENT=	command line parser generator

DISTNAME=	clo++-0.3.0
REVISION=	3
CATEGORIES=	textproc

HOMEPAGE=	http://pmade.org/~pjones/software/clo++/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread stdc++ xml2>=6 z

MASTER_SITES=	${HOMEPAGE}/download/

MODULES=	converters/libiconv

LIB_DEPENDS=	textproc/libxml

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clo++
	${INSTALL_DATA} ${WRKSRC}/doc/handbook.html ${PREFIX}/share/doc/clo++

.include <bsd.port.mk>
