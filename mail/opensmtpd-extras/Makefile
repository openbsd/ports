# $OpenBSD: Makefile,v 1.15 2016/07/09 08:46:25 sthen Exp $

COMMENT-main=		extras for smtpd
COMMENT-clamav=		extras with clamav support for smtpd
COMMENT-lua=		extras with lua bindings for smtpd
COMMENT-mysql=		mysql based smtpd table support
COMMENT-pgsql=		postgresql based smtpd table support
COMMENT-python=		extras with python bindings for smtpd
COMMENT-redis=		redis based smtpd table support
COMMENT-spamassassin=	extras with spamassassin support for smtpd

V=			201606230001
REVISION-main=		0
DISTNAME=		opensmtpd-extras-${V}
PKGNAME-main=		${DISTNAME}
PKGNAME-clamav=		opensmtpd-extras-clamav-${V}
PKGNAME-lua=		opensmtpd-extras-lua-${V}
PKGNAME-mysql=		opensmtpd-extras-mysql-${V}
PKGNAME-pgsql=		opensmtpd-extras-pgsql-${V}
PKGNAME-python=		opensmtpd-extras-python-${V}
PKGNAME-redis=		opensmtpd-extras-redis-${V}
PKGNAME-spamassassin=	opensmtpd-extras-spamassassin-${V}

CATEGORIES=		mail

HOMEPAGE=		https://www.opensmtpd.org/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>, \
			Joerg Jung <jung@openbsd.org>

MULTI_PACKAGES=		-main -clamav -lua -mysql -pgsql -python -redis \
			-spamassassin

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto event ssl m pthread sqlite3 perl
WANTLIB-clamav=		c crypto event ssl
WANTLIB-lua=		c crypto event ssl m ${MODLUA_WANTLIB}
WANTLIB-mysql=		c crypto event ssl m z pthread stdc++ mysqlclient
WANTLIB-pgsql=		c crypto event ssl pq
WANTLIB-python=		c crypto event ssl m util pthread ${MODPY_WANTLIB}
WANTLIB-redis=		c crypto event ssl hiredis
WANTLIB-spamassassin=	c crypto event ssl

MASTER_SITES=		${HOMEPAGE}archives/

MODULES=		lang/lua \
			lang/python

LIB_DEPENDS-lua=	${MODLUA_LIB_DEPENDS}
LIB_DEPENDS-mysql=	databases/mariadb,-main
LIB_DEPENDS-pgsql=	databases/postgresql,-main
LIB_DEPENDS-python=	${MODPY_LIB_DEPENDS}
LIB_DEPENDS-redis=	databases/libhiredis
RUN_DEPENDS-clamav=	security/clamav
RUN_DEPENDS-lua=	${MODLUA_RUN_DEPENDS}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
RUN_DEPENDS-spamassassin=\
			mail/p5-Mail-SpamAssassin

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--mandir=${PREFIX}/man \
			--libexecdir=${PREFIX}/libexec \
			--sysconfdir=${SYSCONFDIR}/mail \
			--with-cppflags="${CFLAGS} -I${PREFIX}/include \
			    -I${PREFIX}/include/postgresql" \
			--with-lua-type=lua${MODLUA_VERSION:S/.//g} \
			--with-python-type=python${MODPY_VERSION} \
			--with-experimental-filter-clamav \
			--with-experimental-filter-dkim-signer \
			--with-experimental-filter-dnsbl \
			--with-experimental-filter-lua \
			--with-experimental-filter-monkey \
			--with-experimental-filter-pause \
			--with-experimental-filter-perl \
			--with-experimental-filter-python \
			--with-experimental-filter-regex \
			--with-experimental-filter-spamassassin \
			--with-experimental-filter-stub \
			--with-experimental-filter-trace \
			--with-experimental-filter-void \
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
