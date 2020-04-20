# $OpenBSD: Makefile,v 1.33 2020/04/20 06:13:11 giovanni Exp $

COMMENT-main=		extras for smtpd
COMMENT-mysql=		mysql based smtpd table support
COMMENT-pgsql=		postgresql based smtpd table support
COMMENT-python=		extras with python bindings for smtpd
COMMENT-redis=		redis based smtpd table support

V=			6.7.1
DISTNAME=		opensmtpd-extras-${V}
PKGNAME-main=		${DISTNAME}
PKGNAME-mysql=		opensmtpd-extras-mysql-${V}
PKGNAME-pgsql=		opensmtpd-extras-pgsql-${V}
PKGNAME-python=		opensmtpd-extras-python-${V}
PKGNAME-redis=		opensmtpd-extras-redis-${V}
EPOCH=			0

CATEGORIES=		mail

HOMEPAGE=		https://www.opensmtpd.org/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>, \
			Joerg Jung <jung@openbsd.org>

MULTI_PACKAGES=		-main -mysql -pgsql -python -redis

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB-main=		c crypto event m pthread ssl sqlite3 z
WANTLIB-mysql=		c crypto event iconv ssl m pthread mariadb z
WANTLIB-pgsql=		c crypto event ssl pq
WANTLIB-python=		c crypto event iconv intl ssl m util pthread ${MODPY_WANTLIB}
WANTLIB-redis=		c crypto event ssl hiredis

MASTER_SITES=		${HOMEPAGE}archives/

MODULES=		lang/python
MODPY_RUNDEP=		no

LIB_DEPENDS-main=	databases/sqlite3
LIB_DEPENDS-mysql=	databases/mariadb,-main
LIB_DEPENDS-pgsql=	databases/postgresql,-main
LIB_DEPENDS-python=	${MODPY_LIB_DEPENDS}
LIB_DEPENDS-redis=	databases/libhiredis
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}

BUILD_DEPENDS = ${MODGNU_AUTOCONF_DEPENDS} \
                ${MODGNU_AUTOMAKE_DEPENDS}

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
CONFIGURE_STYLE=	autoreconf
AUTORECONF=		sh bootstrap
CONFIGURE_ARGS=		--mandir=${PREFIX}/man \
			--libexecdir=${PREFIX}/libexec \
			--sysconfdir=${SYSCONFDIR}/mail \
			--with-cppflags="${CFLAGS} -I${PREFIX}/include \
			    -I${PREFIX}/include/postgresql" \
			--with-python-type=python${MODPY_VERSION} \
			--with-queue-null \
			--with-queue-python \
			--with-queue-ram \
			--with-queue-stub \
			--with-scheduler-python \
			--with-scheduler-ram \
			--with-scheduler-stub \
			--with-table-ldap \
			--with-table-mysql \
			--with-table-passwd \
			--with-table-postgres \
			--with-table-python \
			--with-table-redis \
			--with-table-socketmap \
			--with-table-sqlite \
			--with-table-stub

.include <bsd.port.mk>
