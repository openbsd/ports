# $OpenBSD: Makefile,v 1.262 2020/06/02 14:30:32 pea Exp $

COMMENT-main=	PostgreSQL RDBMS (client)
COMMENT-server=	PostgreSQL RDBMS (server)
COMMENT-docs=	PostgreSQL RDBMS documentation
COMMENT-contrib=PostgreSQL RDBMS contributions
COMMENT-plpython=Python procedural language for PostgreSQL
COMMENT-pg_upgrade=Support for upgrading PostgreSQL data from previous version

VERSION=	12.3
PREV_MAJOR=	11
DISTNAME=	postgresql-${VERSION}
PKGNAME-main=	postgresql-client-${VERSION}
PKGNAME-server=	postgresql-server-${VERSION}
PKGNAME-docs=	postgresql-docs-${VERSION}
PKGNAME-contrib=postgresql-contrib-${VERSION}
PKGNAME-plpython=postgresql-plpython-${VERSION}
PKGNAME-pg_upgrade=postgresql-pg_upgrade-${VERSION}

CATEGORIES=	databases
SHARED_LIBS=	ecpg		7.10 \
		ecpg_compat	4.10 \
		pgtypes		4.9 \
		pq		6.11

HOMEPAGE=	http://www.postgresql.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses crypto m readline ssl z

MASTER_SITES=	https://ftp.postgresql.org/pub/source/v${VERSION}/ \
		ftp://ftp.postgresql.org/pub/source/v${VERSION}/
MULTI_PACKAGES=	-docs -main -server -contrib -pg_upgrade -plpython

MAKE_FILE=	GNUmakefile

V_MAJOR=	${VERSION:R}
SUBST_VARS=	VERSION V_MAJOR PREV_MAJOR

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

MODULES=	lang/python
MODPY_RUNDEP=	No

CONFIGURE_ENV=	ac_cv_path_PYTHON=${MODPY_BIN} \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--disable-rpath --with-openssl=/usr \
		--with-bsd-auth \
		--with-perl \
		--with-python \
		--with-pam=no \
		--with-uuid=bsd \
		--enable-integer-datetimes \
		--includedir="${PREFIX}/include/postgresql" \
		--datadir="${PREFIX}/share/postgresql" \
		--docdir="${PREFIX}/share/doc/postgresql" \
		--with-includes="${INCLUDES}" \
		--with-libraries="${LOCALBASE}/lib" \
		--with-system-tzdata="/usr/share/zoneinfo" \
		--with-openssl \
		--with-libxml \
		--disable-thread-safety

# There is no spinlock support for alpha or hppa yet. Until we have access to
# a system to get this working, disable them for now. There is
# (apparently) a serious performance hit doing this.

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "hppa"
CONFIGURE_ARGS+=--disable-spinlocks
.endif

# To avoid problems with missed floating point overflow checks.
# pgsql 10.6+ refuses to build on i386 clang unless -msse2 is set.
# If clang gains "-fexcess-precision=standard" support then this
# should be removed.
MODULES+=	gcc4
MODGCC4_ARCHS=	i386
MODGCC4_LANGS=	c
# An alternative workaround:
# .if ${MACHINE_ARCH} == "i386"
# CFLAGS +=	-msse2
# .endif

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

ALL_TARGET=	world
INSTALL_TARGET=	install-world

LIB_DEPENDS-main=	archivers/xz \
			converters/libiconv \
			textproc/libxml
WANTLIB-main =	${WANTLIB} iconv lzma xml2


LIB_DEPENDS-server= databases/postgresql=${VERSION} \
		    ${LIB_DEPENDS-main}
WANTLIB-server=	${WANTLIB-main} perl pq

RUN_DEPENDS-contrib= databases/postgresql,-server=${VERSION}
LIB_DEPENDS-contrib= databases/postgresql=${VERSION} \
		     ${LIB_DEPENDS-main}
WANTLIB-contrib=	${WANTLIB-main} perl pq

RUN_DEPENDS-pg_upgrade=	databases/postgresql,-server=${VERSION} \
			databases/postgresql-previous>=${PREV_MAJOR}
LIB_DEPENDS-pg_upgrade= databases/postgresql=${VERSION} \
		     ${LIB_DEPENDS-main}

WANTLIB-pg_upgrade =	${WANTLIB-main} pq

LIB_DEPENDS-plpython=	${MODPY_LIB_DEPENDS}
WANTLIB-plpython =	c m pthread util \
			${MODPY_WANTLIB}
RUN_DEPENDS-plpython=	databases/postgresql,-server=${VERSION}

WANTLIB-docs=
PKG_ARCH-docs=	*


MAKE_ENV=	LIBpq_MAJOR=${LIBpq_VERSION:R} \
		LIBpq_MINOR=${LIBpq_VERSION:E} \
		LIBecpg_MAJOR=${LIBecpg_VERSION:R} \
		LIBecpg_MINOR=${LIBecpg_VERSION:E} \
		LIBecpg_compat_MAJOR=${LIBecpg_compat_VERSION:R} \
		LIBecpg_compat_MINOR=${LIBecpg_compat_VERSION:E} \
		LIBpgtypes_MAJOR=${LIBpgtypes_VERSION:R} \
		LIBpgtypes_MINOR=${LIBpgtypes_VERSION:E}

# Regression tests must be done manually and not as root. Successful
# runs have been achieved on the i386 using the following:
#
#	$ ulimit -p 128
#	$ ulimit -n 1024
#	$ make test NO_TEST=No
#
# Note, you may also need to change a variety of SYSV IPC parameters.
# See pkg/README-server for more details
NO_TEST=	Yes

DOCS=	${WRKSRC}/COPYRIGHT ${WRKSRC}/HISTORY \
	${WRKSRC}/INSTALL ${WRKSRC}/README \
	${WRKSRC}/doc/TODO

# Work around Makefile issue where it attempts to rebuild
# the documentation even if it is not necessary.
pre-build:
	touch ${WRKSRC}/doc/src/sgml/*-stamp

INSTALL_REPLACE = 's/^install_bin = .*$$/ifdef BSD_INSTALL_SCRIPT\ninstall_bin
INSTALL_REPLACE += = \$$\(subst -m 755,,\$${BSD_INSTALL_SCRIPT}\)
INSTALL_REPLACE += \nelse\ninstall_bin = \/usr\/bin\/install -c -o ${BINOWN}
INSTALL_REPLACE += -g ${BINGRP}\nendif/'
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postgresql
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/postgresql
	perl -i -pe ${INSTALL_REPLACE} \
		${PREFIX}/lib/postgresql/pgxs/src/Makefile.global
	${INSTALL_DATA} ${WRKSRC}/src/backend/utils/errcodes.txt \
		${PREFIX}/share/postgresql

.include <bsd.port.mk>
