# $OpenBSD: Makefile,v 1.31 2000/05/24 04:23:21 form Exp $
# $FreeBSD: Makefile,v 1.25 1998/04/22 08:28:07 asami Exp $

DISTNAME=	postgresql-${VERS}
DIST_SUBDIR=	postgresql
CATEGORIES=	databases
NEED_VERSION=	1.251

FAKE=		Yes

HOMEPAGE=	http://www.postgresql.org

MAINTAINER=	pvk@openbsd.ru

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

VERS=		7.0

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
MASTER_SITE_SUBDIR=	v${VERS}

DISTFILES=	postgresql-${VERS}.base${EXTRACT_SUFX} \
		postgresql-${VERS}.support${EXTRACT_SUFX} \
		postgresql-${VERS}.docs${EXTRACT_SUFX}

FLAVORS=tcl docs
FLAVOR?=

.if ${FLAVOR:L:Mtcl}
LIB_DEPENDS=	tcl83::lang/tcl/8.3 tk83::x11/tk/8.3
TCL_INCDIR=	${LOCALBASE}/include/tcl8.3
TK_INCDIR=	${LOCALBASE}/include/tk8.3
MAKE_ENV+=	USE_TCL=true TCL_INCDIR=${TCL_INCDIR} TK_INCDIR=${TK_INCDIR}
WITH_TCL=	--with-tcl --with-tclconfig="${LOCALBASE}/lib/tcl8.3 ${LOCALBASE}/lib/tk8.3"
.endif

WRKDIST=	${WRKDIR}/${DISTNAME}/src

USE_GMAKE=	yes
MAKE_FILE=	GNUmakefile
HAS_CONFIGURE=	Yes
CONFIGURE_ENV+=	POSTGRESDIR="${PREFIX}/pgsql"
CONFIGURE_ARGS= --prefix=${PREFIX}/pgsql --enable-locale \
		--with-template=openbsd \
		--with-includes="${PREFIX}/include ${TCL_INCDIR} \
		${TK_INCDIR}" ${WITH_TCL} --with-libraries=${PREFIX}/lib \
		--srcdir=${WRKSRC}

DOCDIR=		${WRKSRC}/../doc

DOCS=		${WRKSRC}/../COPYRIGHT ${WRKSRC}/../HISTORY \
		${WRKSRC}/../INSTALL ${WRKSRC}/../README \
		${WRKSRC}/../README.OpenBSD ${WRKSRC}/../register.txt

.if ${FLAVOR:L:Mdocs}
DOCS+=		${DOCDIR}/FAQ ${DOCDIR}/FAQ_DEV ${DOCDIR}/README.Charsets \
		${DOCDIR}/README.fsync ${DOCDIR}/README.inet \
		${DOCDIR}/README.locale ${DOCDIR}/README.mb \
		${DOCDIR}/README.mb.jp ${DOCDIR}/TODO
.endif

FAKE_FLAGS=	POSTGRESDIR=${WRKINST}${PREFIX}/pgsql

PGUSER=		pgsql
PGBIN=		${PREFIX}/pgsql/bin
PGLIB=		${PREFIX}/pgsql/lib
PGDATA=		/var/pgsql/data

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
	@cp ${FILESDIR}/pgwrap.c ${FILESDIR}/pgwrap.h ${WRKBUILD}/pgwrap
	@sed -e "s,@PGUSER@,${PGUSER},g" -e "s,@PGBIN@,${PGBIN},g" \
		-e "s,@PGLIB@,${PGLIB},g" -e "s,@PGDATA@,${PGDATA},g" \
		-e "s,@PREFIX@,${PREFIX},g" < ${FILESDIR}/Makefile.in \
		> ${WRKBUILD}/pgwrap/Makefile
	@sed -e "s,@PREFIX@,${PREFIX},g" \
		< ${FILESDIR}/README.OpenBSD.in \
		> ${WRKSRC}/../README.OpenBSD
	(cd ${WRKBUILD}/pgwrap; ${MAKE} depend && ${MAKE})

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pgwrap/pgwrap ${PREFIX}/bin
	@cd ${DOCDIR} && ${MAKE_PROGRAM} POSTGRESDIR=${PREFIX}/pgsql man
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pgsql
	${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/pgsql
.if ${FLAVOR:L:Mdocs}
	@cd ${DOCDIR} && ${MAKE_PROGRAM} PGDOCS=${PREFIX}/share/doc/pgsql all
	${INSTALL_DATA} ${DOCDIR}/*.ps* ${PREFIX}/share/doc/pgsql
.endif

.include <bsd.port.mk>

.if ${FLAVOR:L:Mtcl} && !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-tcl%%/r${PKGDIR}/PFRAG.tcl.shared' -e '//d'
.else if ${FLAVOR:L:Mtcl} && defined(NO_SHARED_LIBS) && \
	${NO_SHARED_LIBS:U} == YES
SED_PLIST+=-e '/%%SHARED-tcl%%/d'
.endif
