# $OpenBSD: Makefile,v 1.185 2014/04/21 13:13:29 ajacoutot Exp $

COMMENT-main=	PostgreSQL RDBMS (client)
COMMENT-server=	PostgreSQL RDBMS (server)
COMMENT-docs=	PostgreSQL RDBMS documentation
COMMENT-contrib=PostgreSQL RDBMS contributions
COMMENT-plpython=Python procedural language for PostgreSQL

# DO NOT FORGET to also change the @ask-update entry in pkg/PLIST-server
# in case a dump before / restore after pkg_add -u is required!

VERSION=	9.3.4
DISTNAME=	postgresql-${VERSION}
PKGNAME-main=	postgresql-client-${VERSION}
PKGNAME-server=	postgresql-server-${VERSION}
PKGNAME-docs=	postgresql-docs-${VERSION}
PKGNAME-contrib=postgresql-contrib-${VERSION}
PKGNAME-plpython=postgresql-plpython-${VERSION}

REVISION=		0

CATEGORIES=	databases
SHARED_LIBS=	ecpg		7.5 \
		ecpg_compat	4.5 \
		pgtypes		4.4 \
		pq		5.6

HOMEPAGE=	http://www.postgresql.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m readline ssl termcap z

MASTER_SITES=	http://ftp.postgresql.org/pub/source/v${VERSION}/ \
	http://ftp5.es.postgresql.org/mirror/postgresql/source/v${VERSION}/ \
	ftp://ftp.postgresql.org/pub/source/v${VERSION}/ \
	ftp://ftp5.us.postgresql.org/pub/PostgreSQL/source/v${VERSION}/

MULTI_PACKAGES=	-docs -main -server -contrib -plpython

# The -client SUBPACKAGE should build and run fine on static arches,
# but the server requires loadable library support. Until we figure
# out the correct incantation to not build the server on those systems,
# simply don't build for them, yet.
SHARED_ONLY=	Yes

MAKE_FILE=	GNUmakefile

SUBST_VARS=	VERSION

USE_GMAKE=	Yes
USE_GROFF=	Yes

CONFIGURE_STYLE=gnu

MODULES=	lang/python
MODPY_RUNDEP=	No

#INCLUDES=	${LOCALBASE}/include /usr/include/kerberosV
CONFIGURE_ENV=	ac_cv_path_PYTHON=${MODPY_BIN} \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--disable-rpath --with-openssl=/usr \
		--with-perl \
		--with-python \
		--with-pam=no \
		--enable-integer-datetimes \
		--includedir="${PREFIX}/include/postgresql" \
		--datadir="${PREFIX}/share/postgresql" \
		--docdir="${PREFIX}/share/doc/postgresql" \
		--with-includes="${INCLUDES}" \
		--with-libraries="${LOCALBASE}/lib" \
		--with-system-tzdata="/usr/share/zoneinfo" \
		--with-openssl \
		--with-ossp-uuid \
		--with-libxml \
		--disable-thread-safety

# There is no spinlock support for hppa yet. Until we have access to
# a system to get this working, disable them for now. There is
# (apparently) a serious performance hit doing this.

.if ${MACHINE_ARCH} == "hppa"
CONFIGURE_ARGS+=--disable-spinlocks
.endif

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

ALL_TARGET=	world
INSTALL_TARGET=	install-world

LIB_DEPENDS-main= textproc/libxml
WANTLIB-main =	${WANTLIB} xml2


LIB_DEPENDS-server= databases/postgresql=${VERSION} \
		    ${LIB_DEPENDS-main}
WANTLIB-server=	${WANTLIB-main} perl pq>=4
RUN_DEPENDS-contrib= databases/postgresql,-server=${VERSION}

LIB_DEPENDS-contrib= databases/postgresql=${VERSION} \
		     ${LIB_DEPENDS-main} \
		     devel/uuid
WANTLIB-contrib=	${WANTLIB-main} pq>=4 ossp-uuid

LIB_DEPENDS-plpython=	${MODPY_LIB_DEPENDS}
WANTLIB-plpython =	c m pthread util \
			${MODPY_WANTLIB}
RUN_DEPENDS-plpython=	databases/postgresql,-server=${VERSION}

WANTLIB-docs=
PKG_ARCH-docs=	*

WANTLIB-server+=	util

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postgresql
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/postgresql

.include <bsd.port.mk>
