# $OpenBSD: Makefile,v 1.6 2008/01/13 17:06:31 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	PostgreSQL database adapter for Python

VERSION=	2.0.6
DISTNAME=	psycopg2-${VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	databases

HOMEPAGE=	http://initd.org/projects/psycopg2

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	http://initd.org/pub/software/psycopg/

MODULES=	lang/python
LIB_DEPENDS=	pq::databases/postgresql
RUN_DEPENDS=	:postgresql-client-*:databases/postgresql

NO_REGRESS=	Yes

SUBST_VARS=	VERSION

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-psycopg2
	cd ${WRKSRC}/doc && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-psycopg2/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/py-psycopg2/{} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-psycopg2
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/py-psycopg2/

.include <bsd.port.mk>
