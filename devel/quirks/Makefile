COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-4.109
PKG_ARCH =	*
MAINTAINER =	Marc Espie <espie@openbsd.org>
FLAVORS =	index
FLAVOR ?=

# BSD
PERMIT_PACKAGE =	Yes

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

NO_TEST =	Yes

LIST =	${WRKDIR}/update.list

do-build:
	perl -Mlib=${FILESDIR} ${FILESDIR}/t >${WRKDIR}/result
	cmp ${WRKDIR}/result ${FILESDIR}/reference
.if ${FLAVOR:Mindex}
	perl ${FILESDIR}/list_update_info -o ${LIST} \
	    ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all
.endif

do-install:
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD/Quirks
	${INSTALL_DATA} ${FILESDIR}/Quirks.pm ${PERLDIR}/OpenBSD/Quirks.pm
.if ${FLAVOR:Mindex}
	/usr/libexec/locate.mklocatedb <${LIST} >${PREFIX}/share/update.db
.endif

.include <bsd.port.mk>
