# $OpenBSD: Makefile,v 1.64 2003/02/12 17:09:03 naddy Exp $

COMMENT=	"PostgreSQL RDBMS"
COMMENT-tcl=	"PostgreSQL RDBMS tcl libraries and utilities"
COMMENT-clients="PostgreSQL RDBMS client libraries and utilities"
COMMENT-docs=	"PostgreSQL RDBMS documentation"

VERSION=	7.3.2
DISTNAME=	postgresql-${VERSION}
PKGNAME-clients=postgresql-clients-${VERSION}
PKGNAME-docs=	postgresql-docs-${VERSION}
PKGNAME-tcl=	postgresql-tcl-${VERSION}
CATEGORIES=	databases

HOMEPAGE=	http://www.postgresql.org/

MAINTAINER=	Brandon Palmer <bpalmer@crimelabs.net>, \
		Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	\
	ftp://ftp.us.postgresql.org/source/v${VERSION}/ \
	ftp://ftp.au.postgresql.org/pub/postgresql/source/v${VERSION}/ \
	ftp://ftp.at.postgresql.org/db/www.postgresql.org/pub/source/v${VERSION}/ \
	ftp://ftp.cl.postgresql.org/pub/GNU/pgsql/source/v${VERSION}/ \
	ftp://ftp.cz.postgresql.org/pub/ftp.postgresql.org/source/v${VERSION}/ \
	ftp://ftp.dk.postgresql.org/mirrors/postgresql/source/v${VERSION}/

PSEUDO_FLAVORS=	tcl
FLAVOR?=

MULTI_PACKAGES=	-clients -docs
SUBPACKAGE?=

MAKE_FILE=	GNUmakefile

SUBST_VARS=	VERSION

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS=-lcurses
CONFIGURE_ARGS=	--disable-rpath \
		--enable-integer-datetimes \
		--includedir="${PREFIX}/include/postgresql" \
		--datadir="${PREFIX}/share/postgresql" \
		--docdir="${PREFIX}/share/doc/postgresql"

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

INSTALL_TARGET=	install install-all-headers

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
	${WRKSRC}/register.txt \
	${WRKSRC}/doc/FAQ ${WRKSRC}/doc/FAQ_DEV ${WRKSRC}/doc/TODO

# For tcl
.if ${FLAVOR:L:Mtcl}
MULTI_PACKAGES+= -tcl

TCL_INCDIR=     ${LOCALBASE}/include/tcl8.3
TK_INCDIR=      ${LOCALBASE}/include/tk8.3
CONFIGURE_ENV+= WISH="${LOCALBASE}/bin/wish8.3"
CONFIGURE_ARGS+= --with-tcl \
        --with-tclconfig="${LOCALBASE}/lib/tcl8.3 ${LOCALBASE}/lib/tk8.3" \
        --with-includes="${TCL_INCDIR} ${TK_INCDIR} ${LOCALBASE}/include"
BUILD_DEPENDS+=   tk83::x11/tk/8.3

. if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-tcl"
RUN_DEPENDS=	::databases/postgresql
LIB_DEPENDS+=   tk83::x11/tk/8.3
.  endif
. endif
.else
CONFIGURE_ARGS+= --without-tcl
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postgresql
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/postgresql
	@sed -e s#!!PREFIX!!#${TRUEPREFIX}#g ${FILESDIR}/README.OpenBSD > \
		${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD ${PREFIX}/share/doc/postgresql

.include <bsd.port.mk>
