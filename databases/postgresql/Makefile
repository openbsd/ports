# New ports collection makefile for:	PostgreSQL
# Version required:	6.3
# Date created:		November 19, 1997
# Whom:			mickey
#			from:	Marc G. Fournier <scrappy@FreeBSD.ORG>
#
# $OpenBSD: Makefile,v 1.3 1998/03/11 02:06:34 marc Exp $

DISTNAME=	postgresql-6.3
CATEGORIES=	databases
MASTER_SITES=	ftp://ftp.PostgreSQL.org/pub/ \
		ftp://ftp.luga.or.at/pub/postgres95/ \
		ftp://ftp.jaist.ac.jp/pub/dbms/postgres95/

MAINTAINER=	ports@openbsd.org

NO_PACKAGE=	"Requires pgsql uid"
WRKSRC=		${WRKDIR}/${DISTNAME}/src

USE_GMAKE=	YES
MAKEFILE=	GNUmakefile
HAS_CONFIGURE=	YES
CONFIGURE_ARGS+=--prefix=${PREFIX}/pgsql \
		--enable-locale \
		--with-template=openbsd \
		--with-defaults=yes

# if you want to use the tcl/tk frontend pgaccess, then you need to build
# postgresql with tcl support by typing: make WITH_TCL=yes
#
.if defined(WITH_TCL) && ${WITH_TCL} == yes
CONFIGURE_ARGS+=--with-tcl
LIB_DEPENDS=	tcl80\\.1\\.:${PORTSDIR}/lang/tcl80
.endif

MAN1=		cleardbdir.1 createdb.1 createuser.1 destroydb.1 \
		destroyuser.1 ecpg.1 initdb.1 initlocation.1 ipcclean.1 \
		pg_dump.1 pg_dumpall.1 pg_passwd.1 pgintro.1 postgres.1 \
		postmaster.1 psql.1
MAN3=		catalogs.3 large_objects.3 libpq.3 oracle_compat.3 pgbuiltin.3
MAN5=		bki.5 page.5 pg_hba.conf.5
MANL=		abort.l alter_table.l alter_user.l begin.l close.l \
		cluster.l commit.l copy.l create_aggregate.l create_database.l \
		create_function.l create_index.l create_language.l \
		create_operator.l create_rule.l create_sequence.l \
		create_table.l create_trigger.l create_type.l create_user.l \
		create_version.l create_view.l declare.l delete.l drop.l \
		drop_aggregate.l drop_database.l drop_function.l drop_index.l \
		drop_language.l drop_operator.l drop_rule.l drop_sequence.l \
		drop_table.l drop_trigger.l drop_type.l drop_user.l \
		drop_view.l end.l explain.l fetch.l grant.l insert.l listen.l \
		load.l lock.l move.l notify.l rename.l reset.l revoke.l \
		rollback.l select.l set.l show.l sql.l update.l vacuum.l

pre-fetch:
.if defined(WITH_TCL)
.if ${WITH_TCL} == yes
	@${ECHO_MSG} "Building/Installing PostgreSQL with \"libpgtcl\"."
.endif
.else
	@${ECHO_MSG} "To build/install the \"PostgreSQL to Tcl interface library\", libpgtcl, type:"
	@${ECHO_MSG} "    make WITH_TCL=yes"
.endif

# The configuration step, this overrides the standard which sets
# INSTALL to a value that caused the gnu configure to bitch.  Since
# this file takes over installation, this is a not issue.
#
do-configure:
	@(cd ${WRKSRC} && CC="${CC}" ac_cv_path_CC="${CC}" CFLAGS="${CFLAGS}" \
	    INSTALL="/usr/bin/install" \
	    INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
	    ${CONFIGURE_ENV} ./${CONFIGURE_SCRIPT} ${CONFIGURE_ARGS})

# Use the postgres makefile override facility to disable shared libs
# libs if necessary
#
pre-build:
.if (${MACHINE_ARCH} == "alpha")
	${ECHO} "# OpenBSD Makefile overrides" > ${WRKSRC}/Makefile.custom
	${ECHO} "BSD_SHLIB= false" >> ${WRKSRC}/Makefile.custom
.endif

post-build:
	@ ${ECHO} "------------------------------------------------------------"
	@ ${ECHO} "Dump existing databases, before installing new db version !!"
	@ ${ECHO} "Detailed instructions, see INSTALL file under ${WRKDIR}...  "
	@ ${ECHO} "------------------------------------------------------------"

# Take over the install phase so things are put in OpenBSD standard
# locations (more or less).
#
# The install steps are:
# 1) create pgsql "home" directory
# 2) create pgsql user -- this updates the password file
# 3) install pgsql binaries, libraries, library files, and headers
# 4) install tcl extensions (if requested).
# 5) install man pages
#
do-install:
	@${MKDIR} ${PREFIX}/pgsql
	@${SETENV} ${MAKE_ENV} perl ${SCRIPTDIR}/createuser
	@${ECHO_MSG} "installing in ${PREFIX}/bin"
	@${INSTALL_PROGRAM} \
		${WRKSRC}/backend/postgres \
		${WRKSRC}/bin/pg_id/pg_id \
		${WRKSRC}/bin/pg_version/pg_version \
		${WRKSRC}/bin/psql/psql \
		${WRKSRC}/bin/pg_dump/pg_dump \
		${WRKSRC}/bin/pg_passwd/pg_passwd \
			${PREFIX}/bin
	@${LN} -sf ${PREFIX}/bin/postgres ${PREFIX}/bin/postmaster
	@${INSTALL_SCRIPT} \
		${WRKSRC}/bin/pg_dump/pg_dumpall \
		${WRKSRC}/bin/cleardbdir/cleardbdir \
		${WRKSRC}/bin/createdb/createdb \
		${WRKSRC}/bin/createuser/createuser \
		${WRKSRC}/bin/destroydb/destroydb \
		${WRKSRC}/bin/destroyuser/destroyuser \
		${WRKSRC}/bin/initdb/initdb \
		${WRKSRC}/bin/initlocation/initlocation \
			${PREFIX}/bin
	@${ECHO_MSG} "installing in ${PREFIX}/lib"
	@${INSTALL_DATA} \
		${WRKSRC}/interfaces/libpq/libpq.a ${PREFIX}/lib
.if (${MACHINE_ARCH} != "alpha")
	@${INSTALL_DATA} \
		${WRKSRC}/interfaces/libpq/libpq.so.1.1 ${PREFIX}/lib
.endif
	@${ECHO_MSG} "installing in ${PREFIX}/lib/pgsql"
	@${MKDIR} ${PREFIX}/lib/pgsql
	@${INSTALL_DATA} \
		${WRKSRC}/backend/global1.bki.source \
		${WRKSRC}/backend/global1.description \
		${WRKSRC}/backend/local1_template1.bki.source \
		${WRKSRC}/backend/local1_template1.description \
		${WRKSRC}/backend/libpq/pg_hba.conf.sample \
		${WRKSRC}/backend/optimizer/geqo/pg_geqo.sample \
			${PREFIX}/lib/pgsql
	@${ECHO_MSG} "installing in ${PREFIX}/include/pgsql"
	@${MKDIR} ${PREFIX}/include/pgsql
	@${INSTALL_DATA} \
		${WRKSRC}/backend/fmgr.h \
		${WRKSRC}/include/os.h \
		${WRKSRC}/include/config.h \
		${WRKSRC}/include/postgres.h \
		${WRKSRC}/include/postgres_ext.h \
		${WRKSRC}/interfaces/libpq/libpq-fe.h \
		${WRKSRC}/interfaces/libpq/c.h \
			${PREFIX}/include/pgsql
	@${MKDIR} ${PREFIX}/include/pgsql/libpq
	@${INSTALL_DATA} \
		${WRKSRC}/include/libpq/pqcomm.h \
		${WRKSRC}/include/libpq/libpq-fs.h \
			${PREFIX}/include/pgsql/libpq
	@${MKDIR} ${PREFIX}/include/pgsql/lib
	@${INSTALL_DATA} \
		${WRKSRC}/include/lib/dllist.h \
			${PREFIX}/include/pgsql/lib
	@${MKDIR} ${PREFIX}/include/pgsql/utils
	@${INSTALL_DATA} \
		${WRKSRC}/include/utils/geo_decls.h \
		${WRKSRC}/include/utils/elog.h \
		${WRKSRC}/include/utils/palloc.h \
			${PREFIX}/include/pgsql/utils
	@${MKDIR} ${PREFIX}/include/pgsql/access
	@${INSTALL_DATA} \
		${WRKSRC}/include/access/attnum.h \
			${PREFIX}/include/pgsql/access
	@${MKDIR} ${PREFIX}/include/pgsql/executor
	@${INSTALL_DATA} \
		${WRKSRC}/include/executor/spi.h \
			${PREFIX}/include/pgsql/executor
	@${MKDIR} ${PREFIX}/include/pgsql/commands
	@${INSTALL_DATA} \
		${WRKSRC}/include/commands/trigger.h \
			${PREFIX}/include/pgsql/commands
.if defined( WITH_TCL ) && ${WITH_TCL} == yes
	@${ECHO_MSG} "installing tcl/tk interface"
	@${INSTALL_PROGRAM} \
		${WRKSRC}/bin/pgtclsh/pgtclsh \
		${WRKSRC}/bin/pgtclsh/pgtksh \
			${PREFIX}/bin
	@${INSTALL_DATA} \
		${WRKSRC}/interfaces/libpgtcl/libpgtcl.a ${PREFIX}/lib
.if (${MACHINE_ARCH} != "alpha")
	@${INSTALL_DATA} \
		${WRKSRC}/interfaces/libpgtcl/libpgtcl.so.1.0 ${PREFIX}/lib
.endif
	@${INSTALL_DATA} \
		${WRKSRC}/interfaces/libpgtcl/libpgtcl.h ${PREFIX}/include/pgsql
.endif
	@${ECHO_MSG} "installing in ${PREFIX}/man"
.for man in ${MAN1}
	@${INSTALL_MAN} ${WRKSRC}/man/${man} ${PREFIX}/man/man1
.endfor
.for man in ${MAN3}
	@${INSTALL_MAN} ${WRKSRC}/man/${man} ${PREFIX}/man/man3
.endfor
.for man in ${MAN5}
	@${INSTALL_MAN} ${WRKSRC}/man/${man} ${PREFIX}/man/man5
.endfor
	@${ECHO_MSG} "installing in ${PREFIX}/pgsql/man"
	@${MKDIR} ${PREFIX}/pgsql/man/manl
.for man in ${MANL}
	@${INSTALL_MAN} ${WRKSRC}/man/${man} ${PREFIX}/pgsql/man/manl
.endfor
	@${LDCONFIG} -m ${PREFIX}/lib

post-install:
	@ if [ ! -f ${PREFIX}/pgsql/.profile ]; then \
		${ECHO} "PATH=${PATH}" \
			> ${PREFIX}/pgsql/.profile; \
		${ECHO} "MANPATH=${MANPATH}:${PREFIX}/pgsql/man" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "PGLIB=${PREFIX}/lib/pgsql" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "# note: PGDATA overwrites the -D startup option" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "PGDATA=${PREFIX}/pgsql/data" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "DISPLAY=:0" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "export PATH MANPATH PGLIB PGDATA DISPLAY" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "# if you want to make regression tests use this TZ" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "#TZ=PST8PDT" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "#export TZ" \
			>> ${PREFIX}/pgsql/.profile; \
	fi
	@ ${SED} -e "s=!!PREFIX!!=${PREFIX}=g" <${FILESDIR}/post-install-notes \
		> ${PREFIX}/pgsql/post-install-notes
	@ ${SED} -e "s=!!PREFIX!!=${PREFIX}=g" <${FILESDIR}/man.conf \
		> ${PREFIX}/pgsql/man.conf
	@ ${CP} -r ${WRKSRC}/bin/pgaccess ${PREFIX}/pgsql
	@ chown -R pgsql:pgsql ${PREFIX}/pgsql
	@ ${ECHO} 'Initializing PostgreSQL Databases - this may take a few minutes...'
	@ su -l pgsql -c '${PREFIX}/bin/initdb --pglib=${PREFIX}/lib/pgsql --pgdata=${PREFIX}/pgsql/data'
	@ ${SED} -e "s=!!PREFIX!!=${PREFIX}=g" < ${FILESDIR}/pgsql.sh.tmpl \
		> ${PREFIX}/pgsql/rc.pgsql
	@ chmod 554 ${PREFIX}/pgsql/rc.pgsql
	@ chown root.pgsql ${PREFIX}/pgsql/rc.pgsql
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/pgsql
	@${CP} -r ${WRKDIR}/${DISTNAME}/doc/* ${PREFIX}/share/doc/pgsql
.endif
.if !defined(BATCH)
	@ more -e ${PREFIX}/pgsql/post-install-notes
.endif

.include <bsd.port.mk>
