COMMENT =	pkg_add speed up cache
CATEGORIES =	databases
DISTFILES =

# API.rev
PKGNAME =	updatedb-0
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes
DPB_PROPERTIES =	later

NO_TEST =	Yes

LIST =	${WRKDIR}/update.list

do-build:
	perl ${FILESDIR}/list_update_info -o ${LIST} \
	    ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all

do-install:
	/usr/libexec/locate.mklocatedb <${LIST} >${PREFIX}/share/update.db

.include <bsd.port.mk>
