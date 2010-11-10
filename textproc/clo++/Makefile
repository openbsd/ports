# $OpenBSD: Makefile,v 1.11 2010/11/10 22:44:03 jasper Exp $

COMMENT=	command line parser generator

DISTNAME=	clo++-0.3.0
REVISION=	0
CATEGORIES=	textproc

HOMEPAGE=	http://pmade.org/~pjones/software/clo++/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c iconv m stdc++ z xml2.>=6

MASTER_SITES=	${HOMEPAGE}/download/

LIB_DEPENDS=	::textproc/libxml

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clo++
	${INSTALL_DATA} ${WRKSRC}/doc/handbook.html ${PREFIX}/share/doc/clo++

.include <bsd.port.mk>
