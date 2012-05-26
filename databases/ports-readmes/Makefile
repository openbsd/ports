# $OpenBSD: Makefile,v 1.1.1.1 2012/05/26 12:22:44 espie Exp $

COMMENT =		readmes.html

PKG_ARCH = *
DISTNAME =		ports-readmes-0
DISTFILES =

CATEGORIES =		databases

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	databases/sqlports,-compact>=2.2 \
		databases/p5-DBD-SQLite \
		textproc/p5-Template

PLIST = ${WRKINST}/plist
# XXX this plist *will change*
PLIST_DB =
do-build:
	TEMPLATESDIR=${FILESDIR} OUTPUTDIR=${WRKBUILD} perl ${FILESDIR}/make-readmes

READMES_DIR = ${PREFIX}/share/ports-readme

do-install:
	${INSTALL_DATA_DIR} ${READMES_DIR}
	cp -r ${WRKBUILD}/* ${READMES_DIR}
	chown -R ${SHAREOWN}.${SHAREGRP} ${READMES_DIR}
	cd ${PREFIX} && find share/ports-readme -type f >${WRKINST}/list1
	cd ${PREFIX} && find share/ports-readme -type d|sed -e 's,$$,/,' >${WRKINST}/list2
	{ \
		echo "@comment This file has been automatically generated"; \
		echo "@option always-update"; \
		sort ${WRKINST}/list[12]; \
	} >${PLIST}

.include <bsd.port.mk>
