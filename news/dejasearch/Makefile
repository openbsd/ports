# $OpenBSD: Makefile,v 1.3 2002/03/21 21:09:20 espie Exp $

COMMENT=	"frontend to dejanews for searching usenet archives"

DISTNAME=	dejasearch-1.9.0
CATEGORIES=	news
NEED_VERSION=	1.515

HOMEPAGE=	http://homemade.hypermart.net/dejasearch/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

NO_BUILD=	Yes

DOCS=	COPYING FAQ HISTORY README

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dejasearch
	${INSTALL_PROGRAM} ${WRKSRC}/dejasearch ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dejasearch.1 ${PREFIX}/man/man1
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/dejasearch

.include <bsd.port.mk>
