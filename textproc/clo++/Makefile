# $OpenBSD: Makefile,v 1.15 2013/03/11 11:42:41 espie Exp $

COMMENT=	command line parser generator

DISTNAME=	clo++-0.3.0
REVISION=	2
CATEGORIES=	textproc

HOMEPAGE=	http://pmade.org/~pjones/software/clo++/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m stdc++ z xml2>=6

MASTER_SITES=	${HOMEPAGE}/download/

MODULES=	converters/libiconv

LIB_DEPENDS=	textproc/libxml

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clo++
	${INSTALL_DATA} ${WRKSRC}/doc/handbook.html ${PREFIX}/share/doc/clo++

.include <bsd.port.mk>
