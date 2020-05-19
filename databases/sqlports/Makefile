# $OpenBSD: Makefile,v 1.122 2020/05/19 08:50:55 espie Exp $

CATEGORIES =		databases
V =			7.28
DISTNAME =		sqlports-$V
DISTFILES =
COMMENT =		sqlite database of ports
COMMENT-main =		${COMMENT}
COMMENT-list =		full list of pkgpaths in ports
MAINTAINER =		Marc Espie <espie@openbsd.org>
PKGNAME-main =		sqlports-$V
PKGNAME-list =		portslist-$V

PERMIT_PACKAGE =	Yes
MULTI_PACKAGES =	-main -list

DBNAME =		sqlports
SQLCACHE =		${DBNAME}_cache.sql
SQLVIEWS =		${DBNAME}_views.sql
DBS =			${DBNAME}.list ${DBNAME} ports-INDEX ${SQLCACHE}
BUILD_DEPENDS =		databases/p5-DBD-SQLite \
			databases/sqlite3
RUN_DEPENDS-main =	databases/sqlite3
FLAVORS =	nonstrict
FLAVOR =

.if ${FLAVOR:Mnonstrict}
STRICT =
.else
STRICT =-s
.endif

SCRIPTS = print-ports-index show-reverse-deps rebuild-sqlports-cache

do-build:
	@PORTSDIR=${PORTSDIR} ${MAKE_ENV} perl ${FILESDIR}/mksqlitedb -v -V $V -p ${WRKBUILD}/ouch ${STRICT} -C ${WRKBUILD}/${SQLCACHE} -w ${WRKBUILD}/${SQLVIEWS} ${WRKBUILD}/${DBNAME}
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi
	cd ${WRKBUILD} && sqlite3 <${SQLCACHE} ${DBNAME}

alter-tables:
	@${MAKE_ENV} ${SUDO} -u ${BUILD_USER} perl ${FILESDIR}/rebuild_schema -v -V $V ${WRKBUILD/${DBNAME}
	@${SUDO} -u ${BUILD_USER} ${MAKE} post-build

post-build:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/sqlite3 ${DBNAME} 'select min(_paths.fullpkgpath) from _paths join _ports on _paths.id=_ports.fullpkgpath where _ports.static_plist=1 group by fullpkgname order by _paths.fullpkgpath' >${DBNAME}.list
	@cd ${WRKBUILD} && sh ${FILESDIR}/scripts/print-ports-index ${DBNAME} >ports-INDEX

do-install:
	if [[ `wc -l < ${WRKBUILD}/ports-INDEX` -le 666 ]]; then echo "Unexpectedly short file."; exit 1; fi
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
.for s in ${SCRIPTS}
	@${SUBST_PROGRAM} ${FILESDIR}/scripts/$s ${PREFIX}/bin/$s
.endfor
	@for i in ${DBS}; do \
		${INSTALL_DATA} ${WRKBUILD}/$$i ${PREFIX}/share; \
	done

NO_TEST =		Yes
NO_CHECKSUM =		Yes

.include <bsd.port.mk>
