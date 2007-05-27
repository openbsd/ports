# $OpenBSD: Makefile,v 1.1.1.1 2007/05/27 14:58:30 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	"PostgreSQL database adapter for Python"

DISTNAME=	psycopg2-2.0.5.1
PKGNAME=	py-${DISTNAME}
CATEGORIES=	databases lang/python

HOMEPAGE=	http://initd.org/projects/psycopg2

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		pq

MASTER_SITES=	http://initd.org/pub/software/psycopg/

MODULES=	lang/python
BUILD_DEPENDS=	:postgresql-server-*:databases/postgresql,-server
RUN_DEPENDS=	:postgresql-client-*:databases/postgresql

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-psycopg2
	cd ${WRKSRC}/doc && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-psycopg2/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/py-psycopg2/{} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-psycopg2
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/py-psycopg2/

.include <bsd.port.mk>
