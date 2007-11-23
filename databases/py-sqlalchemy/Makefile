# $OpenBSD: Makefile,v 1.6 2007/11/23 11:56:42 martynas Exp $

COMMENT=		database toolkit for Python

V=			0.4.1
DISTNAME=		SQLAlchemy-${V}
PKGNAME=		py-sqlalchemy-${V}

CATEGORIES=		databases lang/python

HOMEPAGE=		http://www.sqlalchemy.org/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sqlalchemy/}

SUBST_VARS=		V

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

# Other DB connectors would work, too.
REGRESS_DEPENDS=	::databases/py-sqlite2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/doc && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/py-sqlalchemy/{} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/examples/py-sqlalchemy/{} \;

do-regress:
	@cd ${WRKSRC} && PYTHONPATH=./test/ ${MODPY_BIN} test/alltests.py --db sqlite

.include <bsd.port.mk>
