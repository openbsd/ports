COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-5.2
PKG_ARCH =	*
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

NO_TEST =	Yes

LIST =	${WRKDIR}/update.list

do-build:
	perl -Mlib=${FILESDIR} ${FILESDIR}/t >${WRKDIR}/result
	cmp ${WRKDIR}/result ${FILESDIR}/reference
	perl ${FILESDIR}/list_update_info -o ${LIST} \
	    ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all

do-install:
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD/Quirks
	${INSTALL_DATA} ${FILESDIR}/Quirks.pm ${PERLDIR}/OpenBSD/Quirks.pm
	/usr/libexec/locate.mklocatedb <${LIST} >${PREFIX}/share/update.db

.include <bsd.port.mk>
