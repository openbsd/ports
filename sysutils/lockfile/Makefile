COMMENT=	semaphore-file tool for shell scripting

GH_ACCOUNT=	BuGlessRB
GH_PROJECT=	procmail
GH_TAGNAME=	v3.24
PKGNAME=	lockfile-${GH_TAGNAME:S/v//}

CATEGORIES=	sysutils

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c m

NO_TEST=	Yes

MAKE_FLAGS=	BASENAME="${PREFIX}" CC="${CC}" CFLAGS0="${CFLAGS}" \
		LOCKINGTEST="110" BINSS=lockfile MANS1S=lockfile MANS5S=

do-install:
	cd ${WRKBUILD}/new; \
	    ${INSTALL_PROGRAM} lockfile ${PREFIX}/bin; \
	    ${INSTALL_MAN} lockfile.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
