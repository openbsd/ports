# $OpenBSD: Makefile,v 1.44 2001/03/10 16:56:54 brad Exp $
# $FreeBSD: Makefile,v 1.25 1998/04/22 08:28:07 asami Exp $

VERSION=	7.0.3
DISTNAME=	postgresql-${VERSION}
PKGNAME=	pgsql-${VERSION}
CATEGORIES=	databases
NEED_VERSION=	1.356

HOMEPAGE=	http://www.postgresql.org/

MAINTAINER=	Pavel Korovin <pvk@openbsd.ru>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.postgresql.org/pub/%SUBDIR%/ \
	ftp://gd.tuwien.ac.at/db/www.postgresql.org/pub/%SUBDIR%/ \
	ftp://ftp.cwb.fnn.net/pub/Linux/postgresql/%SUBDIR%/ \
	ftp://looking-glass.usask.ca/pub/postgresql/%SUBDIR%/ \
	ftp://linux.netfirm.net/pub/Linux/PostgreSQL/%SUBDIR%/ \
	ftp://sunsite.uniandes.edu.co/pub/postgresql/%SUBDIR%/ \
	ftp://ftp.fi.muni.cz/pub/postgresql/%SUBDIR%/ \
	ftp://ftp.sunsite.auc.dk/mirrors/www.postgresql.org/%SUBDIR%/ \
	ftp://postgresql.matrix.fi/%SUBDIR%/ \
	ftp://ftp.fr.postgresql.org/%SUBDIR%/ \
	ftp://ftp.de.postgresql.org/%SUBDIR%/ \
	ftp://ftp.ntua.gr/pub/databases/postgresql/%SUBDIR%/ \
	ftp://ftp.postgreSQL.uli.it/%SUBDIR%/ \
	ftp://mirror.nucba.ac.jp/mirror/postgresql/pub/%SUBDIR%/ \
	ftp://ring.ip-kyoto.ad.jp/pub/misc/db/postgresql/%SUBDIR%/ \
	ftp://ring.crl.go.jp/pub/misc/db/postgresql/%SUBDIR%/ \
	ftp://ring.saitama-u.ac.jp/pub/misc/db/postgresql/%SUBDIR%/ \
	ftp://ring.astem.or.jp/pub/misc/db/postgresql/%SUBDIR%/ \
	ftp://ring.exp.fujixerox.co.jp/pub/misc/db/postgresql/%SUBDIR%/ \
	ftp://ring.jah.ne.jp/pub/misc/db/postgresql/%SUBDIR%/ \
	ftp://ring.etl.go.jp.jp/pub/misc/db/postgresql/%SUBDIR%/ \
	ftp://ring.asahi-net.or.jp/pub/misc/db/postgresql/%SUBDIR%/ \
	ftp://ring.so-net.ne.jp/pub/misc/db/postgresql/%SUBDIR%/ \
	ftp://ring.aist.go.jp/pub/misc/db/postgresql/%SUBDIR%/ \
	ftp://jordan.ce.yeungnam.ac.kr/pub/postgresql/%SUBDIR%/ \
	ftp://ftp.kr.postgresql.org/pub/postgresql/%SUBDIR%/ \
	ftp://postgresql.linux.com.mx/pub/postgresql/pub/%SUBDIR%/ \
	ftp://postgresql.godzone.net.nz/postgresql/%SUBDIR%/ \
	ftp://postgresql.iphil.net/%SUBDIR%/ \
	ftp://ftp.sai.msu.su/unix/database/pgsql/%SUBDIR%/ \
	ftp://www.sk.postgresql.org/pub/linux/postgresql/%SUBDIR%/ \
	ftp://ftp.linux.co.za/pub/postgresql/%SUBDIR%/ \
	ftp://ftp.sunet.se/pub/unix/databases/relational/postgresql/%SUBDIR%/ \
	ftp://ftp.danyk.ch/postgres/%SUBDIR%/ \
	ftp://ftp.ccit.edu.tw/packages/postgresql/%SUBDIR%/ \
	ftp://ftp.siamu.ac.th/pub/pub2/ftp.postgresql.org/%SUBDIR%/ \
	ftp://postgresql.rmplc.co.uk/pub/postgresql/%SUBDIR%/ \
	ftp://ftp.scyph.org/pub/Mirrors/ftp.postgresql.org/%SUBDIR%/ \
	ftp://mars.capital-data.com/pub/postgresql/%SUBDIR%/ \
	ftp://ftp.digex.net/pub/packages/database/postgresql/%SUBDIR%/ \
	ftp://ftp.iodynamics.com/pub/mirror/postgresql/%SUBDIR%/ \
	ftp://postgresql.nextpath.com/pub/postgresql/%SUBDIR%/ \
	ftp://www.ndesign.com.ua/pub/psql/%SUBDIR%/ \
	ftp://postgresql.netafric.ci/%SUBDIR%/
MASTER_SITE_SUBDIR= v${VERSION}
DIST_SUBDIR=	postgresql
DISTFILES= ${DISTNAME}.base.tar.gz \
	${DISTNAME}.support.tar.gz \
	${DISTNAME}.docs.tar.gz

FLAVORS=	tcl odbc
FLAVOR?=

MULTI_PACKAGES=	-clients -docs
SUBPACKAGE?=

## build dependencies
USE_GMAKE=	Yes
.if ${FLAVOR:L:Mtcl}
LIB_DEPENDS=	tk83::x11/tk/8.3
.endif

## configuring
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	POSTGRESDIR="${PREFIX}"
CONFIGURE_ARGS= --prefix="${PREFIX}" \
	--enable-locale --enable-multibyte --enable-recode \
	--with-template="openbsd" --with-libraries="${LOCALBASE}/lib"

.if ${FLAVOR:L:Mtcl}
TCL_INCDIR=	${LOCALBASE}/include/tcl8.3
TK_INCDIR=	${LOCALBASE}/include/tk8.3
CONFIGURE_ENV+=	WISH="${LOCALBASE}/bin/wish8.3" \
		PGACCESS_HOME="${PREFIX}/lib/pgsql"
CONFIGURE_ARGS+= --with-tcl \
	--with-tclconfig="${LOCALBASE}/lib/tcl8.3 ${LOCALBASE}/lib/tk8.3" \
	--with-includes="${LOCALBASE}/include ${TCL_INCDIR} ${TK_INCDIR}"
.else
CONFIGURE_ARGS+= --with-includes="${LOCALBASE}/include"
.endif

. if ${FLAVOR:L:Modbc}
CONFIGURE_ARGS+= --with-odbc
.endif

## making
MAKE_FILE=	GNUmakefile
FAKE_FLAGS=	POSTGRESDIR="${WRKINST}${PREFIX}"

.if ${FLAVOR:L:Mtcl}
MAKE_ENV=	USE_TCL=true TCL_INCDIR="${TCL_INCDIR}" \
		TK_INCDIR="${TK_INCDIR}" \
		PGACCESS_HOME="${PREFIX}/lib/pgsql"
FAKE_FLAGS+=	PGACCESS_HOME="${WRKINST}/${PREFIX}/lib/pgsql"
.endif

DOCDIR=		${WRKSRC}/../doc
DOCS=		${WRKSRC}/../COPYRIGHT ${WRKSRC}/../HISTORY \
		${WRKSRC}/../INSTALL ${WRKSRC}/../README \
		${WRKSRC}/../register.txt \
		${DOCDIR}/FAQ ${DOCDIR}/FAQ_DEV ${DOCDIR}/README.Charsets \
		${DOCDIR}/README.fsync ${DOCDIR}/README.inet \
		${DOCDIR}/README.locale ${DOCDIR}/README.mb \
		${DOCDIR}/README.mb.jp ${DOCDIR}/TODO \

WRKDIST=	${WRKDIR}/${DISTNAME}/src

SUBST_VARS=	VERSION

.if ${FLAVOR:L:Mtcl}
post-patch:
	@mv ${WRKSRC}/bin/pgaccess/main.tcl \
		${WRKSRC}/bin/pgaccess/main.tcl.orig
	@sed -e "s=wish=${LOCALBASE}/bin/wish8.3=" \
		${WRKSRC}/bin/pgaccess/main.tcl.orig \
		> ${WRKSRC}/bin/pgaccess/main.tcl
.endif

post-build:
	@mkdir -p ${WRKBUILD}/pgwrap
	@cp ${FILESDIR}/{Makefile,pgwrap.c,pgwrap.h} ${WRKBUILD}/pgwrap
	@cd ${WRKBUILD}/pgwrap && ${MAKE} depend && ${MAKE}

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pgwrap/pgwrap ${PREFIX}/bin
	@cd ${DOCDIR} && ${MAKE_PROGRAM} POSTGRESDIR="${PREFIX}" man
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pgsql
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/pgsql
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/pgsql
	@cd ${DOCDIR} && ${MAKE_PROGRAM} PGDOCS="${PREFIX}/share/doc/pgsql" all
	${INSTALL_DATA} ${DOCDIR}/*.ps* ${PREFIX}/share/doc/pgsql

.include <bsd.port.mk>

.if ${SUBPACKAGE} == "-clients"
PKGNAME:=	pgsql-clients-${VERSION}
.elif ${SUBPACKAGE} == "-docs"
PKGNAME:=	pgsql-docs-${VERSION}
.endif

.if ${FLAVOR:L:Mtcl} && !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-tcl%%/r${PKGDIR}/PFRAG.tcl.shared' -e '//d'
.else if ${FLAVOR:L:Mtcl} && defined(NO_SHARED_LIBS) && \
	${NO_SHARED_LIBS:U} == YES
SED_PLIST+=-e '/%%SHARED-tcl%%/d'
.endif
.if ${FLAVOR:L:Modbc} && !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-odbc%%/r${PKGDIR}/PFRAG.odbc.shared' -e '//d'
.else if ${FLAVOR:L:Modbc} && defined(NO_SHARED_LIBS) && \
        ${NO_SHARED_LIBS:U} == YES
SED_PLIST+=-e '/%%SHARED-odbc%%/d'
.endif
