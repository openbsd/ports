# $OpenBSD: Makefile,v 1.18 2010/08/30 20:53:57 fgsch Exp $

COMMENT =		database toolkit for Python

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		SQLAlchemy-${MODPY_EGG_VERSION}
PKGNAME =		py-sqlalchemy-${MODPY_EGG_VERSION:S/p/./}
REVISION =		0

CATEGORIES =		databases

HOMEPAGE =		http://www.sqlalchemy.org/

MAINTAINER =		Will Maier <wcmaier@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sqlalchemy/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
PKG_ARCH =		*

MAKE_ENV +=		PYTHONPATH=.

# Other DB connectors would work, too.
REGRESS_DEPENDS =	::databases/py-sqlite2 \
			::devel/py-nose

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

do-regress:
	${_MODPY_CMD} develop -d.
	@cd ${WRKSRC} && ${MAKE_ENV} nosetests

.include <bsd.port.mk>
