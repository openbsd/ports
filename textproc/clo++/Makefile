# $OpenBSD: Makefile,v 1.9 2006/08/03 23:55:11 espie Exp $

COMMENT=	"command line parser generator"

DISTNAME=	clo++-0.3.0
CATEGORIES=	textproc

HOMEPAGE=	http://pmade.org/~pjones/software/clo++/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c iconv m stdc++ z 

MASTER_SITES=	${HOMEPAGE}/download/

LIB_DEPENDS=	xml2.>=6::textproc/libxml

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clo++
	${INSTALL_DATA} ${WRKSRC}/doc/handbook.html ${PREFIX}/share/doc/clo++

.include <bsd.port.mk>
