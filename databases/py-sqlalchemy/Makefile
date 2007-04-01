# $OpenBSD: Makefile,v 1.2 2007/04/01 13:16:29 steven Exp $

COMMENT=		"database toolkit for Python"

V=			0.3.6
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
REGRESS_DEPENDS=	::databases/py-sqlite2 \
			::databases/py-mysql

do-regress:
	@cd ${WRKSRC} && PYTHONPATH=./test/ ${MODPY_BIN} test/alltests.py --db sqlite

.include <bsd.port.mk>
