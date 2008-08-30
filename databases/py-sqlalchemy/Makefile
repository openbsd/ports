# $OpenBSD: Makefile,v 1.11 2008/08/30 02:10:13 fgsch Exp $

COMMENT=		database toolkit for Python

MODPY_EGG_VERSION=	0.4.7p1
DISTNAME=		SQLAlchemy-${MODPY_EGG_VERSION}
PKGNAME=		py-sqlalchemy-${MODPY_EGG_VERSION}

CATEGORIES=		databases

HOMEPAGE=		http://www.sqlalchemy.org/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sqlalchemy/}

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

# Other DB connectors would work, too.
REGRESS_DEPENDS=	::databases/py-sqlite2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * $ ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
	    pax -rw * $ ${PREFIX}/share/examples/py-sqlalchemy

do-regress:
	@cd ${WRKSRC} && ${MAKE_ENV} \
	    PYTHONPATH=test ${MODPY_BIN} test/alltests.py --db sqlite

.include <bsd.port.mk>
