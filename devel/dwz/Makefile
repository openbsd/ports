COMMENT =	DWARF optimization and duplicate removal tool
PKGNAME =	dwz-0.15
XXHASH_V =	0.8.1
DISTFILES =	${PKGNAME}.tar.gz
DISTFILES.h= 	xxhash-${XXHASH_V}{xxhash}.h

CATEGORIES =	devel

HOMEPAGE =	https://sourceware.org/dwz/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c elf

SITES =		https://sourceware.org/ftp/dwz/releases/
SITES.h =	https://raw.githubusercontent.com/Cyan4973/xxHash/v${XXHASH_V}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

ALL_TARGET =	dwz

NO_TEST =	Yes
FAKE_FLAGS =	mandir=${TRUEPREFIX}/man prefix=${TRUEPREFIX}

WRKDIST =	${WRKDIR}/dwz

# XXX bootstrap: DEBUG_PACKAGES needs a dwz binary to work

DWZ = ${WRKBUILD}/dwz

EXTRACT_ONLY =	${DISTFILES}

# Cannot use sysutils/xxhash as that introduces a loop.
# XXX: Revisit using the :patch target next update.
post-extract:
	cp ${DISTDIR}/xxhash-${XXHASH_V}.h ${WRKSRC}/xxhash.h

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlp64}
CFLAGS +=	-DNATIVE_POINTER_SIZE=8
.else
CFLAGS +=	-DNATIVE_POINTER_SIZE=4
.endif

.if ${PROPERTIES:Mle}
CFLAGS +=	-DNATIVE_ENDIAN_VAL=ELFDATA2LSB
.else
CFLAGS +=	-DNATIVE_ENDIAN_VAL=ELFDATA2MSB
.endif

.include <bsd.port.mk>
