# $OpenBSD: Makefile,v 1.1.1.1 2003/12/29 14:09:03 kevlo Exp $

COMMENT=	"text-based MSN messenger client"

DISTNAME=	pebrot-0.8.2
PKGNAME=	py-${DISTNAME}
CATEGORIES=	net

HOMEPAGE=	http://pebrot.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pebrot/}

RUN_DEPENDS=	:py-cjkcodecs-*:converters/py-cjkcodecs

NO_BUILD=	Yes
NO_REGRESS=	Yes

MODULES=	python

DOCDIR=		${PREFIX}/share/doc/pebrot

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pebrot
	${INSTALL_SCRIPT} ${WRKSRC}/pebrot ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/pebrotrc ${PREFIX}/share/examples/pebrot
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}

.include <bsd.port.mk>
