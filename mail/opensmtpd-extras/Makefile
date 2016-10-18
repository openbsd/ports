# $OpenBSD: Makefile,v 1.18 2016/10/18 18:05:19 jung Exp $

COMMENT-main=		extras for smtpd
COMMENT-mysql=		mysql based smtpd table support
COMMENT-pgsql=		postgresql based smtpd table support
COMMENT-python=		extras with python bindings for smtpd
COMMENT-redis=		redis based smtpd table support

V=			201610152004
DISTNAME=		opensmtpd-extras-${V}
PKGNAME-main=		${DISTNAME}
PKGNAME-mysql=		opensmtpd-extras-mysql-${V}
PKGNAME-pgsql=		opensmtpd-extras-pgsql-${V}
PKGNAME-python=		opensmtpd-extras-python-${V}
PKGNAME-redis=		opensmtpd-extras-redis-${V}
REVISION-main=		0

CATEGORIES=		mail

HOMEPAGE=		https://www.opensmtpd.org/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>, \
			Joerg Jung <jung@openbsd.org>

MULTI_PACKAGES=		-main -mysql -pgsql -python -redis

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto event ssl sqlite3
WANTLIB-mysql=		c crypto event ssl m z pthread stdc++ mysqlclient
WANTLIB-pgsql=		c crypto event ssl pq
WANTLIB-python=		c crypto event ssl m util pthread ${MODPY_WANTLIB}
WANTLIB-redis=		c crypto event ssl hiredis

MASTER_SITES=		${HOMEPAGE}archives/

MODULES=		lang/python

LIB_DEPENDS-main=	databases/sqlite3
LIB_DEPENDS-mysql=	databases/mariadb,-main
LIB_DEPENDS-pgsql=	databases/postgresql,-main
LIB_DEPENDS-python=	${MODPY_LIB_DEPENDS}
LIB_DEPENDS-redis=	databases/libhiredis
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--mandir=${PREFIX}/man \
			--libexecdir=${PREFIX}/libexec \
			--sysconfdir=${SYSCONFDIR}/mail \
			--with-cppflags="${CFLAGS} -I${PREFIX}/include \
			    -I${PREFIX}/include/postgresql" \
			--with-python-type=python${MODPY_VERSION} \
			--with-filter-monkey \
			--with-filter-stub \
			--with-filter-trace \
			--with-filter-void \
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
			--with-table-stub \
			--with-tool-stats

NO_TEST=		Yes

post-install:
			${INSTALL_DATA_DIR} \
			    ${PREFIX}/share/examples/opensmtpd-extras
			cd ${WRKSRC} && ${INSTALL_DATA} \
			    extras/filters/filter-*/filter-*.conf \
			    ${PREFIX}/share/examples/opensmtpd-extras

.include <bsd.port.mk>
