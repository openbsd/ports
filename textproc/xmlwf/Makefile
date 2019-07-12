# $OpenBSD: Makefile,v 1.7 2019/07/12 21:02:28 sthen Exp $

COMMENT=	verifies XML documents
V=		2.1.0

PKGNAME=	xmlwf-$V
DISTNAME=	expat-$V

CATEGORIES=	textproc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=expat/}

HOMEPAGE=	http://expat.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

WRKSRC=			${WRKDIR}/expat-$V/xmlwf
WANTLIB=		c expat
NO_TEST=		Yes

do-configure:
	ln -s ${FILESDIR}/Makefile ${WRKSRC}/Makefile

post-install:
	${INSTALL_MAN} ${WRKSRC}/../doc/xmlwf.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
