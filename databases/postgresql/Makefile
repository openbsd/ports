# $OpenBSD: Makefile,v 1.57 2002/05/19 23:39:57 brad Exp $

COMMENT=	"PostgreSQL RDBMS"
COMMENT-clients="PostgreSQL RDBMS client libraries and utilities"
COMMENT-docs=	"PostgreSQL RDBMS documentation"

VERSION=	7.1.3
DISTNAME=	postgresql-${VERSION}
PKGNAME-clients=postgresql-clients-${VERSION}
FULLPKGNAME-docs=postgresql-docs-${VERSION}
CATEGORIES=	databases
NEED_VERSION=	1.435

HOMEPAGE=	http://www.postgresql.org/

MAINTAINER=	Brandon Palmer <bpalmer@crimelabs.net>, Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	\
		ftp://ftp.digex.net/pub/packages/database/postgresql/v${VERSION}/ \
		ftp://postgresql.readysetnet.com/pub/postgresql/v${VERSION}/ \
		ftp://ftp.crimelabs.net/pub/postgresql/v${VERSION}/ \
		ftp://www.ndesign.com.ua/pub/psql/v${VERSION}/ \
		ftp://looking-glass.usask.ca/pub/postgresql/v${VERSION}/ \
		ftp://ftp.iodynamics.com/pub/mirror/postgresql/v${VERSION}/ \
		ftp://postgresql.rmplc.co.uk/pub/postgresql/v${VERSION}/ \
		ftp://ftp.fhl.net/pub/postgresql/v${VERSION}/ \
		ftp://ftp.sunet.se/pub/unix/databases/relational/postgresql/v${VERSION}/ \
		ftp://postgresql.godzone.net.nz/postgresql/v${VERSION}/ \
		ftp://linux.sarang.net/mirror/database/postgresql/v${VERSION}/ \
		ftp://ring.asahi-net.or.jp/pub/misc/db/postgresql/v${VERSION}/ \
		ftp://ftp.postgreSQL.uli.it/pub/v${VERSION}/ \
		ftp://ftp.fr.postgresql.org/pub/v${VERSION}/ \
		ftp://postgresql.matrix.fi/pub/v${VERSION}/

FLAVORS=	tcl odbc no_locale no_ssl # perl
FLAVOR?=

MULTI_PACKAGES=	-clients -docs
SUBPACKAGE?=

MAKE_FILE=	GNUmakefile

SUBST_VARS=	VERSION

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS=-lcurses
CONFIGURE_ARGS=	--enable-syslog \
		--disable-rpath \
		--with-CXX \
		--datadir="${PREFIX}/share/postgresql" \
		--docdir="${PREFIX}/share/doc/postgresql"

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/config

.if ${FLAVOR:L:Mtcl}
LIB_DEPENDS+=	tk83::x11/tk/8.3
TCL_INCDIR=	${LOCALBASE}/include/tcl8.3
TK_INCDIR=	${LOCALBASE}/include/tk8.3
CONFIGURE_ENV+=	WISH="${LOCALBASE}/bin/wish8.3"
CONFIGURE_ARGS+= --with-tcl \
	--with-tclconfig="${LOCALBASE}/lib/tcl8.3 ${LOCALBASE}/lib/tk8.3" \
	--with-includes="${LOCALBASE}/include ${TCL_INCDIR} ${TK_INCDIR}"
.endif

.if ${FLAVOR:L:Modbc}
LIB_DEPENDS+=	iodbc::databases/iodbc
CONFIGURE_ARGS+=--enable-odbc --with-odbcinst="${SYSCONFDIR}"
.endif

# This does not work yet. The Pg module Makefile do not follow the fake
# install scheme properly. The best bet if you need this is to go with
# either a direct install of the Pg modules from CPAN, look out for a
# p5-Pg package or use the DBI interface - Peter
.if ${FLAVOR:L:Mperl}
CONFIGURE_ARGS+= --with-perl
.endif

.if ${FLAVOR:L:Mno_ssl}
CONFIGURE_ARGS+= --without-openssl
.else
CONFIGURE_ARGS+= --with-openssl="/usr"
.endif

.if ${FLAVOR:L:Mno_locale}
CONFIGURE_ARGS+= --disable-locale --disable-recode
.else
CONFIGURE_ARGS+= --enable-locale --enable-recode
DOCS+=		${WRKSRC}/doc/README.mb.big5 ${WRKSRC}/doc/README.mb.jp
.endif

.if ${FLAVOR:L:Mtcl}
post-patch:
	@mv ${WRKSRC}/src/bin/pgaccess/main.tcl \
		${WRKSRC}/src/bin/pgaccess/main.tcl.orig
	@sed -e "s=wish=${LOCALBASE}/bin/wish8.3=" \
		${WRKSRC}/src/bin/pgaccess/main.tcl.orig \
		> ${WRKSRC}/src/bin/pgaccess/main.tcl
.endif

INSTALL_TARGET=	install install-all-headers

DOCS+=	${WRKSRC}/COPYRIGHT ${WRKSRC}/HISTORY \
	${WRKSRC}/INSTALL ${WRKSRC}/README \
	${WRKSRC}/register.txt \
	${WRKSRC}/doc/FAQ ${WRKSRC}/doc/FAQ_DEV ${WRKSRC}/doc/TODO

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postgresql
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/postgresql
	@sed -e s#!!PREFIX!!#${TRUEPREFIX}#g ${FILESDIR}/README.OpenBSD > \
		${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD ${PREFIX}/share/doc/postgresql

.include <bsd.port.mk>

.if ${FLAVOR:L:Mtcl} && !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-tcl%%/r${PKGDIR}/PFRAG.tcl.shared' -e '//d'
.elif ${FLAVOR:L:Mtcl} && defined(NO_SHARED_LIBS) && \
	${NO_SHARED_LIBS:L} == "yes"
SED_PLIST+=-e '/%%SHARED-tcl%%/d'
.endif

.if ${FLAVOR:L:Modbc} && !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-odbc%%/r${PKGDIR}/PFRAG.odbc.shared' -e '//d'
.elif ${FLAVOR:L:Modbc} && defined(NO_SHARED_LIBS) && \
	${NO_SHARED_LIBS:L} == "yes"
SED_PLIST+=-e '/%%SHARED-odbc%%/d'
.endif
