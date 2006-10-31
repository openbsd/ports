# $OpenBSD: Makefile,v 1.96 2006/10/31 06:50:24 mbalmer Exp $

COMMENT=	"PostgreSQL RDBMS (client)"
COMMENT-server=	"PostgreSQL RDBMS (server)"
COMMENT-docs=	"PostgreSQL RDBMS documentation"

VERSION=	8.1.5
DISTNAME=	postgresql-${VERSION}
FULLPKGNAME=	postgresql-client-${VERSION}
PKGNAME-server=	postgresql-server-${VERSION}p4
PKGNAME-docs=	postgresql-docs-${VERSION}

CATEGORIES=	databases
SHARED_LIBS=	ecpg		5.2 \
		ecpg_compat	2.2 \
		pgtypes		2.2 \
		pq		4.2

HOMEPAGE=	http://www.postgresql.org/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c com_err crypto m readline ssl termcap util z

MASTER_SITES= ftp://ftp2.uk.postgresql.org/sites/ftp.postgresql.org/source/v${VERSION}/ \
	ftp://ftp5.us.postgresql.org/pub/PostgreSQL/source/v${VERSION}/ \
	ftp://ftp5.es.postgresql.org/mirror/postgresql/source/v${VERSION}/ \
	ftp://ftp.postgresql.org/pub/source/v${VERSION}/

MULTI_PACKAGES=	-server -docs
SUBPACKAGE?=

# The -client SUBPACKAGE should build and run fine on static arches,
# but the server requires loadable library support. Until we figure
# out the correct incantation to not build the server on those systems,
# simply don't build for them, yet.
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

MAKE_FILE=	GNUmakefile

SUBST_VARS=	VERSION

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.own.mk>

CONFIGURE_ARGS=	--disable-rpath --with-openssl=/usr \
		--with-perl \
		--enable-integer-datetimes \
		--includedir="${PREFIX}/include/postgresql" \
		--datadir="${PREFIX}/share/postgresql" \
		--with-docdir="${PREFIX}/share/doc/postgresql" \
		--with-openssl

.if ${KERBEROS5} == "yes"
CONFIGURE_ARGS+=--with-krb5 --with-includes=/usr/include/kerberosV
.endif

# There is no spinlock support for hppa yet. Until we have access to
# a system to get this working, disable them for now. There is
# (apparently) a serious performance hit doing this.

.if ${MACHINE_ARCH} == "hppa"
CONFIGURE_ARGS+=--disable-spinlocks
.endif

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

INSTALL_TARGET=	install

.if !defined(PACKAGING) || ${SUBPACKAGE} == "-server"
WANTLIB+=	perl
.endif

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-server"
LIB_DEPENDS=	pq.>=4:postgresql-client-${VERSION}:databases/postgresql
.  elif ${SUBPACKAGE} == "-docs"
WANTLIB=
PKG_ARCH=	*
.  endif
.endif

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
	${WRKSRC}/doc/FAQ ${WRKSRC}/doc/FAQ_DEV ${WRKSRC}/doc/TODO

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postgresql
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/postgresql
	@sed -e s#!!PREFIX!!#${TRUEPREFIX}#g ${FILESDIR}/README.OpenBSD > \
		${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/doc/postgresql

.include <bsd.port.mk>
