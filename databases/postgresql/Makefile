# $OpenBSD: Makefile,v 1.29 2000/04/09 17:36:14 espie Exp $
# $FreeBSD: Makefile,v 1.25 1998/04/22 08:28:07 asami Exp $

DISTNAME=	postgresql-6.5.3
CATEGORIES=	databases
NEED_VERSION=	1.230
FAKE=No

MAINTAINER=	form@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.postgresql.org/pub/ \
		ftp://gd.tuwien.ac.at/db/www.postgresql.org/pub/ \
		ftp://ftp.cwb.fnn.net/pub/Linux/postgresql/ \
		ftp://looking-glass.usask.ca/pub/postgresql/ \
		ftp://linux.netfirm.net/pub/Linux/PostgreSQL/ \
		ftp://sunsite.uniandes.edu.co/pub/postgresql/ \
		ftp://ftp.fi.muni.cz/pub/postgresql/ \
		ftp://ftp.sunsite.auc.dk/mirrors/www.postgresql.org/ \
		ftp://postgresql.matrix.fi/ \
		ftp://ftp.fr.postgresql.org/ \
		ftp://ftp.de.postgresql.org/ \
		ftp://ftp.ntua.gr/pub/databases/postgresql/ \
		ftp://ftp.postgreSQL.uli.it/ \
		ftp://mirror.nucba.ac.jp/mirror/postgresql/pub/ \
		ftp://ring.ip-kyoto.ad.jp/pub/misc/db/postgresql/ \
		ftp://ring.crl.go.jp/pub/misc/db/postgresql/ \
		ftp://ring.saitama-u.ac.jp/pub/misc/db/postgresql/ \
		ftp://ring.astem.or.jp/pub/misc/db/postgresql/ \
		ftp://ring.exp.fujixerox.co.jp/pub/misc/db/postgresql/ \
		ftp://ring.jah.ne.jp/pub/misc/db/postgresql/ \
		ftp://ring.etl.go.jp.jp/pub/misc/db/postgresql/ \
		ftp://ring.asahi-net.or.jp/pub/misc/db/postgresql/ \
		ftp://ring.so-net.ne.jp/pub/misc/db/postgresql/ \
		ftp://ring.aist.go.jp/pub/misc/db/postgresql/ \
		ftp://jordan.ce.yeungnam.ac.kr/pub/postgresql/ \
		ftp://ftp.kr.postgresql.org/pub/postgresql/ \
		ftp://postgresql.linux.com.mx/pub/postgresql/pub/ \
		ftp://postgresql.godzone.net.nz/postgresql/ \
		ftp://postgresql.iphil.net/ \
		ftp://ftp.sai.msu.su/unix/database/pgsql/ \
		ftp://www.sk.postgresql.org/pub/linux/postgresql/ \
		ftp://ftp.linux.co.za/pub/postgresql/ \
		ftp://ftp.sunet.se/pub/unix/databases/relational/postgresql/ \
		ftp://ftp.danyk.ch/postgres/ \
		ftp://ftp.ccit.edu.tw/packages/postgresql/ \
		ftp://ftp.siamu.ac.th/pub/pub2/ftp.postgresql.org/ \
		ftp://postgresql.rmplc.co.uk/pub/postgresql/ \
		ftp://ftp.scyph.org/pub/Mirrors/ftp.postgresql.org/ \
		ftp://mars.capital-data.com/pub/postgresql/ \
		ftp://ftp.digex.net/pub/packages/database/postgresql/ \
		ftp://ftp.iodynamics.com/pub/mirror/postgresql/ \
		ftp://postgresql.nextpath.com/pub/postgresql/ \
		ftp://www.ndesign.com.ua/pub/psql/ \
		ftp://postgresql.netafric.ci/

# if you want to use the tcl/tk frontend pgaccess, then you need to build
# postgresql with tcl support by typing: make USE_TCL=yes
.if defined(USE_TCL) && ${USE_TCL:U} == "YES"
TCL_INCDIR=	${LOCALBASE}/include/tcl8.0
TK_INCDIR=	${LOCALBASE}/include/tk8.0
MAKE_ENV=	USE_TCL=true TCL_INCDIR=${TCL_INCDIR} TK_INCDIR=${TK_INCDIR}
LIB_DEPENDS=	tcl80::lang/tcl/8.0 tk80::x11/tk/8.0
WITH_TCL=	--with-tcl --with-tclconfig="${LOCALBASE}/lib/tcl8.0 ${LOCALBASE}/lib/tk8.0"
PKGNAME=	${DISTNAME}-tcl
.else
PKGNAME=	${DISTNAME}
.endif

USE_GMAKE=	yes
MAKE_FILE=	GNUmakefile
HAS_CONFIGURE=	yes
CONFIGURE_ARGS= --prefix=${PREFIX}/pgsql \
		--enable-locale \
		--with-template=`uname -s | tr '[A-Z]' '[a-z]'` \
		--with-includes="${PREFIX}/include ${TCL_INCDIR} \
		${TK_INCDIR}" ${WITH_TCL} --with-libraries=${PREFIX}/lib

WRKDIST=		${WRKDIR}/${DISTNAME}/src

PLIST=		${WRKDIR}/PLIST

INSTALL_TARGET= install install-man

PGUSER=		pgsql
PGBIN=		${PREFIX}/pgsql/bin
PGLIB=		${PREFIX}/pgsql/lib
PGDATA=		/var/pgsql/data

post-configure:
.if defined(USE_TCL) && ${USE_TCL:U} == "YES"
	@if [ x"${NO_SHARED_LIBS}" = "x" ]; then \
		cp ${PKGDIR}/PLIST.tcl ${WRKDIR}/PLIST; \
	else \
		cp ${PKGDIR}/PLIST.tcl.noshared ${WRKDIR}/PLIST; \
	fi
.else
	@if [ x"${NO_SHARED_LIBS}" = "x" ]; then \
		cp ${PKGDIR}/PLIST ${WRKDIR}/PLIST; \
	else \
		cp ${PKGDIR}/PLIST.noshared ${WRKDIR}/PLIST; \
	fi
.endif

.if defined(USE_TCL) && ${USE_TCL:U} == "YES"
post-patch:
	@mv ${WRKSRC}/bin/pgaccess/main.tcl \
		${WRKSRC}/bin/pgaccess/main.tcl.orig
	@sed -e "s=wish=${LOCALBASE}/bin/wish8.0=" \
		${WRKSRC}/bin/pgaccess/main.tcl.orig \
		> ${WRKSRC}/bin/pgaccess/main.tcl
.endif

pre-build:
	@mkdir -p ${WRKSRC}/pgwrap
	@cp ${FILESDIR}/pgwrap.c ${FILESDIR}/pgwrap.h ${WRKSRC}/pgwrap
	@sed -e "s,@PGUSER@,${PGUSER},g" -e "s,@PGBIN@,${PGBIN},g" \
		-e "s,@PGLIB@,${PGLIB},g" -e "s,@PGDATA@,${PGDATA},g" \
		-e "s,@PREFIX@,${PREFIX},g" < ${FILESDIR}/Makefile.in \
		> ${WRKSRC}/pgwrap/Makefile
	@sed -e "s,@PREFIX@,${PREFIX},g" \
		< ${FILESDIR}/README.OpenBSD.in \
		> ${WRKSRC}/../doc/README.OpenBSD
	(cd ${WRKSRC}/pgwrap; ${MAKE} depend && ${MAKE})

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/pgsql

post-install:
	@rmdir ${PREFIX}/pgsql/include/port/bsd
	@rmdir ${PREFIX}/pgsql/include/port
	${INSTALL_PROGRAM} ${WRKSRC}/pgwrap/pgwrap ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pgsql
	${INSTALL_DATA} ${WRKSRC}/../doc/FAQ* ${PREFIX}/share/doc/pgsql
	${INSTALL_DATA} ${WRKSRC}/../doc/README* ${PREFIX}/share/doc/pgsql
	${INSTALL_DATA} ${WRKSRC}/../doc/TODO* ${PREFIX}/share/doc/pgsql
	${INSTALL_DATA} ${WRKSRC}/../doc/*ps.gz ${PREFIX}/share/doc/pgsql
	${INSTALL_DATA} ${WRKSRC}/../INSTALL ${PREFIX}/share/doc/pgsql
	@${LDCONFIG} -m ${PREFIX}/pgsql/lib
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
