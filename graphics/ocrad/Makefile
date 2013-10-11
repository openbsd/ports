# $OpenBSD: Makefile,v 1.8 2013/10/11 23:49:49 naddy Exp $

COMMENT=	OCR program for pnm files

DISTNAME=	ocrad-0.18
CATEGORIES=	graphics

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m stdc++

MASTER_SITES=	${MASTER_SITE_GNU:=ocrad/}

CONFIGURE_STYLE=gnu
MAKE_FLAGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

post-install:
	${INSTALL_MAN} ${WRKBUILD}/doc/ocrad.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ocrad
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ocrad

.include <bsd.port.mk>
