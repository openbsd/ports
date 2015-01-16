# $OpenBSD: Makefile,v 1.3 2015/01/16 23:37:54 giovanni Exp $

COMMENT-main=	extra tools for OpenSMTPD
COMMENT-python=	Python bindings for OpenSMTPD
COMMENT-mysql=	OpenSMTPD authentication support for MySQL
COMMENT-pgsql=	OpenSMTPD authentication support for PostgreSQL

V=		20150115
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
GH_COMMIT=	ff7eb202324e693f14c5eb37f467a88d2ed729fe

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
