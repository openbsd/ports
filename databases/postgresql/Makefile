# $OpenBSD: Makefile,v 1.11 1998/10/19 09:52:49 form Exp $
# FreeBSD: Makefile,v 1.25 1998/04/22 08:28:07 asami Exp
#

DISTNAME=	postgresql-6.3.2
CATEGORIES=	databases

NO_PACKAGE=	"Requires pgsql uid"

MAINTAINER=	form@vs.itam.nsc.ru

MASTER_SITES=	ftp://ftp.postgresql.org/pub/

# openbsd yacc fails with: /usr/bin/yacc: f - maximum table size exceeded
# so use bison
#
BUILD_DEPENDS=	bison:${PORTSDIR}/devel/bison

.if defined(USE_TCL)
MAKE_ENV=	USE_TCL=true TCL_INCDIR=${PREFIX}/include/tcl8.0
LIB_DEPENDS=	tcl80\\.1\\.:${PORTSDIR}/lang/tcl80 \
		tk80\\.1\\.:${PORTSDIR}/x11/tk80
WITH_TCL=	--with-tcl
.endif

DBPREFIX=	/var/db

WRKSRC=		${WRKDIR}/${DISTNAME}/src

USE_GMAKE=	YES
MAKEFILE=	GNUmakefile
HAS_CONFIGURE=	YES
CONFIGURE_ARGS= --prefix=${PREFIX}/pgsql \
		--enable-locale \
		--with-template=`uname -s | ${TR} '[A-Z]' '[a-z]'` \
		--with-includes=/usr/local/include ${WITH_TCL} \
		--with-libraries=/usr/local/lib

# Spit this message out right away.
#
pre-build:
.if !defined(USE_TCL)
	@${ECHO_MSG} "To build the \"PostgreSQL to Tcl interface library\", libpgtcl, type:"
	@${ECHO_MSG} "    make USE_TCL=yes"
.else
	@${ECHO_MSG} "Building PostgreSQL with \"libpgtcl\"."
.endif

pre-install:
.if defined(PACKAGE_BUILDING)
	/bin/rm -rf ${PREFIX}/pgsql
.endif
	@ ${MKDIR} ${PREFIX}/pgsql
	@ ${SETENV} ${MAKE_ENV} perl ${SCRIPTDIR}/createuser

post-install:
	@ if [ ! -f ${PREFIX}/pgsql/.profile ]; then \
		${ECHO} "PATH=${PATH}:${PREFIX}/pgsql/bin" \
			> ${PREFIX}/pgsql/.profile; \
		${ECHO} "MANPATH=${MANPATH}:${PREFIX}/pgsql/man" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "PGLIB=${PREFIX}/pgsql/lib" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "# note: PGDATA overwrites the -D startup option" \
			>> ${PREFIX}/pgsql/.profile; \
		${ECHO} "PGDATA=${DBPREFIX}/pgsql/data" \
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
	@ chown -R pgsql:pgsql ${PREFIX}/pgsql
	@ if [ ! -d ${DBPREFIX}/pgsql/data ]; then \
		${MKDIR} -p ${DBPREFIX}/pgsql/data; \
		chown pgsql:pgsql ${DBPREFIX}/pgsql ${DBPREFIX}/pgsql/data; \
		chmod 700 ${DBPREFIX}/pgsql/data; \
		${ECHO} 'Initializing PostgreSQL Databases - this may take a few minutes...'; \
		${LDCONFIG} -m ${PREFIX}/pgsql/lib; \
		su -l pgsql -c '${PREFIX}/pgsql/bin/initdb --pglib=${PREFIX}/pgsql/lib --pgdata=${DBPREFIX}/pgsql/data'; \
	else \
		${ECHO} 'Found existing PostgreSQL database(s) -- skipping database initializing...'; \
	fi
	${SED} -e "s=!!PREFIX!!=${PREFIX}=g" < ${FILESDIR}/pgsql.sh.tmpl > ${PREFIX}/pgsql/bin/pgsql.sh
	chmod 554 ${PREFIX}/pgsql/bin/pgsql.sh
	chown root.pgsql ${PREFIX}/pgsql/bin/pgsql.sh
	${INSTALL_DATA} ${FILESDIR}/post-install-notes ${PREFIX}/pgsql
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/pgsql
	${CP} -r ${WRKDIR}/${DISTNAME}/doc/* ${PREFIX}/share/doc/pgsql
.endif
.if !defined(BATCH)
	@ more -e ${FILESDIR}/post-install-notes
.endif

.include <bsd.port.mk>
