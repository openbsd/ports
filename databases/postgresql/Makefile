# $OpenBSD: Makefile,v 1.69 2004/07/26 10:10:46 peter Exp $

COMMENT=	"PostgreSQL RDBMS (client)"
COMMENT-server=	"PostgreSQL RDBMS (server)"
COMMENT-docs=	"PostgreSQL RDBMS documentation"

VERSION=	7.4.3
DISTNAME=	postgresql-${VERSION}
FULLPKGNAME=	postgresql-client-${VERSION}
PKGNAME-server=	postgresql-server-${VERSION}
PKGNAME-docs=	postgresql-docs-${VERSION}

CATEGORIES=	databases

HOMEPAGE=	http://www.postgresql.org/

MAINTAINER=	Brandon Palmer <bpalmer@crimelabs.net>, \
		Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=	"without fee clause"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"without fee clause"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES= ftp://ftp3.us.postgresql.org/pub/postgresql/source/v${VERSION}/ \
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
CONFIGURE_ENV=	LIBS=-lcurses

.include <bsd.own.mk>

.if ${KERBEROS5} == "yes"
POSTGRES_KRB5_LIBS=--with-krb5=/usr
POSTGRES_KRB5_INCLUDES=/usr/include/kerberosV
.endif

CONFIGURE_ARGS=	--disable-rpath --with-openssl=/usr \
		--with-includes=${POSTGRES_KRB5_LIBS} --with-perl \
		--enable-integer-datetimes \
		--includedir="${PREFIX}/include/postgresql" \
		--datadir="${PREFIX}/share/postgresql" \
		--docdir="${PREFIX}/share/doc/postgresql"

# There is no spinlock support for hppa yet. Until we have access to
# a system to get this working, disable them for now. There is
# (apparently) a serious performance hit doing this.

.if ${MACHINE_ARCH} == "hppa"
CONFIGURE_ARGS+=--disable-spinlocks
.endif

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

INSTALL_TARGET=	install install-all-headers

.if ${SUBPACKAGE} == "-server"
RUN_DEPENDS=    :postgresql-client-${VERSION}:databases/postgresql
.endif

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
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD ${PREFIX}/share/doc/postgresql

.include <bsd.port.mk>
