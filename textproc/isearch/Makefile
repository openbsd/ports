# $OpenBSD: Makefile,v 1.13 2001/05/06 04:11:44 lebel Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net> 

COMMENT=	"text search engine by CNIDR"

#BROKEN=		C++ syntax errors, index.cxx:533: ANSI C++ forbids declaration PhraseLength with no type

DISTNAME=	Isearch-1.14
PKGNAME=	isearch-1.14	
CATEGORIES=	textproc databases
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.cnidr.org/pub/NIDR.tools/Isearch/

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		CFLAGS='${CFLAGS} -DUNIX'
FAKE_FLAGS=		INSTALL=${WRKINST}${PREFIX}/bin

post-install:
	strip ${PREFIX}/bin/Isearch
	strip ${PREFIX}/bin/Iindex
	strip ${PREFIX}/bin/Iutil
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Isearch
	${INSTALL_DATA} ${WRKSRC}/html/*.html ${PREFIX}/share/doc/Isearch

.include <bsd.port.mk>
