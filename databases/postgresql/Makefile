# $OpenBSD: Makefile,v 1.150 2011/04/19 08:39:21 pea Exp $

COMMENT-main=	PostgreSQL RDBMS (client)
COMMENT-server=	PostgreSQL RDBMS (server)
COMMENT-docs=	PostgreSQL RDBMS documentation
COMMENT-contrib=PostgreSQL RDBMS contributions

VERSION=	9.0.4
DISTNAME=	postgresql-${VERSION}
PKGNAME-main=	postgresql-client-${VERSION}
PKGNAME-server=	postgresql-server-${VERSION}
PKGNAME-docs=	postgresql-docs-${VERSION}
PKGNAME-contrib=postgresql-contrib-${VERSION}


CATEGORIES=	databases
SHARED_LIBS=	ecpg		7.2 \
		ecpg_compat	4.2 \
		pgtypes		4.1 \
		pq		5.3

HOMEPAGE=	http://www.postgresql.org/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c com_err crypto m readline ssl termcap z

MASTER_SITES= ftp://ftp2.uk.postgresql.org/sites/ftp.postgresql.org/source/v${VERSION}/ \
	ftp://ftp5.us.postgresql.org/pub/PostgreSQL/source/v${VERSION}/ \
	ftp://ftp5.es.postgresql.org/mirror/postgresql/source/v${VERSION}/ \
	ftp://ftp.postgresql.org/pub/source/v${VERSION}/

MULTI_PACKAGES=	-docs -main -server -contrib

# The -client SUBPACKAGE should build and run fine on static arches,
# but the server requires loadable library support. Until we figure
# out the correct incantation to not build the server on those systems,
# simply don't build for them, yet.
SHARED_ONLY=	Yes

MAKE_FILE=	GNUmakefile

SUBST_VARS=	VERSION

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

.include <bsd.own.mk>

INCLUDES=	${LOCALBASE}/include /usr/include/kerberosV
CONFIGURE_ARGS=	--disable-rpath --with-openssl=/usr \
		--with-perl \
		--enable-integer-datetimes \
		--includedir="${PREFIX}/include/postgresql" \
		--datadir="${PREFIX}/share/postgresql" \
		--docdir="${PREFIX}/share/doc/postgresql" \
		--with-includes="${INCLUDES}" \
		--with-libraries="${LOCALBASE}/lib" \
		--with-openssl \
		--with-ossp-uuid \
		--with-libxml \
		--disable-thread-safety \
		--with-krb5

# There is no spinlock support for hppa yet. Until we have access to
# a system to get this working, disable them for now. There is
# (apparently) a serious performance hit doing this.

.if ${MACHINE_ARCH} == "hppa"
CONFIGURE_ARGS+=--disable-spinlocks
.endif

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

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
WANTLIB-contrib = 	${WANTLIB-main} pq>=4 uuid

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
#	$ make regress NO_REGRESS=No
#
# Note, you may also need to change a variety of SYSV IPC parameters.
# See files/README.OpenBSD for more details
NO_REGRESS=	Yes

DOCS=	${WRKSRC}/COPYRIGHT ${WRKSRC}/HISTORY \
	${WRKSRC}/INSTALL ${WRKSRC}/README \
	${WRKSRC}/doc/README.mb.big5 ${WRKSRC}/doc/README.mb.jp \
	${WRKSRC}/doc/TODO

post-build:
	cd ${WRKBUILD}/contrib && exec ${SETENV} ${MAKE_ENV} \
	    ${MAKE_PROGRAM} ${MAKE_FLAGS} ${ALL_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postgresql
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/postgresql
	cd ${WRKBUILD}/contrib && exec ${SETENV} ${MAKE_ENV} DESTDIR=${WRKINST} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} ${INSTALL_TARGET}

.include <bsd.port.mk>
