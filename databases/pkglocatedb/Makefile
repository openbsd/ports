# $OpenBSD: Makefile,v 1.20 2013/01/17 21:28:14 rpe Exp $

# NOTE for FLAVOR=src
# - you can have up-to-date ${BSDSRCDIR}/distrib/sets/lists 
# and ${XSRCDIR}/distrrib/sets/lists prior to building
# - or you can fetch them on the fly through anoncvs
# you need to set PKGLOCATEDB_WANTANONCVS=Yes in /etc/mk.conf
# and you may possibly want to set PKG_LOCATEDB_CVSROOT
# The port *will go interactive* the first time around, until you
# have the correct key in your ssh config !
#
# The port *will fail if the installation is not more or less uptodate wrt to
# the set lists...

COMMENT =		database of packages for use with locate(1)

# locate data is NOT MI, unfortunately
# PKG_ARCH = ${ARCH}....
DISTNAME =		pkglocatedb-0.6
REVISION =		0
DISTFILES =

CATEGORIES =		databases

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	databases/sqlports,-compact>=2.3
FLAVORS = src
FLAVOR ?=

ARGS = -a -p ${PORTSDIR}
.if ${FLAVOR:Msrc}
ARGS += -C -s ${BSDSRCDIR} -x ${XSRCDIR}

.  include <bsd.own.mk>

PKGLOCATEDB_WANTANONCVS ?= No
.  if ${PKGLOCATEDB_WANTANONCVS:L} == "yes"
PKGLOCATEDB_CVSROOT ?= anoncvs@anoncvs1.ca.openbsd.org:/cvs

BSDSRCDIR = ${WRKDIR}/src
XSRCDIR = ${WRKDIR}/xenocara
post-extract:
	cd ${WRKDIR} && cvs -d ${PKGLOCATEDB_CVSROOT} co src/distrib/sets/lists
	cd ${WRKDIR} && cvs -d ${PKGLOCATEDB_CVSROOT} co xenocara/distrib/sets/lists

.  else
BSDSRCDIR ?= /usr/src
XSRCDIR ?= /usr/xenocara

post-extract:
	if ! test -d ${BSDSRCDIR}/distrib/sets/lists; then \
		echo 1>&2 "set SRCDIR to a valid src dir"; \
		exit 1; \
	fi
	if ! test -d ${XSRCDIR}/distrib/sets/lists; then \
		echo 1>&2 "set XSRCDIR to a valid xenocara dir"; \
		exit 1; \
	fi
.  endif
.endif

do-build: 
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pkglocatedb ${PREFIX}/share
	${INSTALL_MAN} ${FILESDIR}/pkg_locate.1 ${PREFIX}/man/man1
	${SUBST_CMD} -o root -g bin -c ${FILESDIR}/pkglocate ${PREFIX}/bin/pkg_locate
	chmod ${BINMODE} ${PREFIX}/bin/pkg_locate
	ln -s ${TRUEPREFIX}/bin/pkg_locate ${PREFIX}/bin/pkglocate

NO_REGRESS =		Yes

.include <bsd.port.mk>

# XXX cheat a bit to avoid having two makefiles
do-build: ${WRKBUILD}/pkglocatedb

${WRKBUILD}/subdirlist:
	sqlite3 ${LOCALBASE}/share/sqlports-compact 'select min(paths.fullpkgpath) from paths join ports on paths.id=ports.fullpkgpath where ports.static_plist=1 group by fullpkgname order by paths.fullpkgpath' >$@
${WRKBUILD}/pkglocatedb: ${WRKBUILD}/subdirlist
	SUBDIRLIST=${WRKBUILD}/subdirlist REPORT_PROBLEM_LOGFILE=${WRKBUILD}/ouch ${SUDO} pkg_mklocatedb ${ARGS} > $@.tmp && mv $@.tmp $@
