# $OpenBSD: Makefile,v 1.4 2015/01/19 14:08:02 giovanni Exp $

COMMENT-main=	extra tools for OpenSMTPD
COMMENT-python=	Python bindings for OpenSMTPD
COMMENT-mysql=	OpenSMTPD authentication support for MySQL
COMMENT-pgsql=	OpenSMTPD authentication support for PostgreSQL

V=		20150119
DISTNAME=	OpenSMTPD-extras-${V}
PKGNAME-main=	${DISTNAME:L}
PKGNAME-mysql=	opensmtpd-extras-mysql-${V}
PKGNAME-pgsql=	opensmtpd-extras-pgsql-${V}
PKGNAME-python=	opensmtpd-extras-python-${V}
CATEGORIES=	mail

HOMEPAGE=	http://www.opensmtpd.org/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

GH_PROJECT=	OpenSMTPD-extras
GH_ACCOUNT=	OpenSMTPD
GH_COMMIT=	a9cc8a03f6ae16008d23f766d621192a52c59893

MULTI_PACKAGES=	-main -mysql -pgsql -python

PREFIX=		/usr

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
CONFIGURE_STYLE=	none

LIB_DEPENDS-mysql=	databases/mariadb,-main
LIB_DEPENDS-pgsql=	databases/postgresql,-main

WANTLIB-main=	c util
WANTLIB-mysql=	c mysqlclient pthread util
WANTLIB-pgsql=	c pq util
WANTLIB-python=	c ${MODPY_WANTLIB} pthread util

MODPY_RUNDEP=		No
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}

WRKDIST=	${WRKDIR}/${GH_PROJECT}-${GH_COMMIT}/extras

NO_TEST=		Yes

pre-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/smtpd

.include <bsd.port.mk>
