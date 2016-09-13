# $OpenBSD: Makefile,v 1.17 2016/09/13 18:52:05 naddy Exp $

COMMENT=	command line parser generator

DISTNAME=	clo++-0.3.0
REVISION=	3
CATEGORIES=	textproc

HOMEPAGE=	http://pmade.org/~pjones/software/clo++/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv m pthread stdc++ xml2>=6 z

MASTER_SITES=	${HOMEPAGE}/download/

LIB_DEPENDS=	converters/libiconv \
		textproc/libxml

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clo++
	${INSTALL_DATA} ${WRKSRC}/doc/handbook.html ${PREFIX}/share/doc/clo++

.include <bsd.port.mk>
