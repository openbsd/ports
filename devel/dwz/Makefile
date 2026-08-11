COMMENT =	DWARF optimization and duplicate removal tool

# 0.17 requires GElf_Chdr/gelf_getchdr added in sourceware libelf 0.165
# (we use libelf from elftoolchain instead, which doesn't have this)
PKGNAME =	dwz-0.16
REVISION =	2

XXHASH_V =	0.8.3
DISTFILES.xx =	xxhash-${XXHASH_V}{xxhash}.h
DISTFILES =	${PKGNAME}.tar.gz
EXTRACT_ONLY =	${DISTFILES}

CATEGORIES =	devel

HOMEPAGE =	https://sourceware.org/dwz/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c elf

SITES =		https://sourceware.org/ftp/dwz/releases/
SITES.xx =	https://raw.githubusercontent.com/Cyan4973/xxHash/v${XXHASH_V}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

ALL_TARGET =	dwz

NO_TEST =	Yes
FAKE_FLAGS =	mandir=${TRUEPREFIX}/man prefix=${TRUEPREFIX}

WRKDIST =	${WRKDIR}/dwz

# XXX bootstrap: DEBUG_PACKAGES needs a dwz binary to work
DWZ =		${WRKBUILD}/dwz

# Cannot use sysutils/xxhash as that introduces a loop.
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
