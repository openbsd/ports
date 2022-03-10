# $OpenBSD: Makefile,v 1.12 2022/03/10 12:03:34 kn Exp $

COMMENT =	utility for modifying existing ELF executables and libraries

V =			0.14.5
DISTNAME =		patchelf-${V}
MASTER_SITES =		https://github.com/NixOS/patchelf/releases/download/${V}/
REVISION =		0

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c m

# -std=c++17
COMPILER =		base-clang ports-gcc

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man

.include <bsd.port.arch.mk>

# amd64:   TOTAL: 45, PASS: 44, FAIL:  1 (replace-add-needed.sh)
# sparc64: TOTAL: 45, PASS: 33, FAIL: 12 (XXX: mostly 'Abort trap')
TEST_TARGET =		check

.if !${PROPERTIES:Mclang}
# use newer ports as(1) ports since base's 2.17 is too old to accept a type
# argument for `.section' in ${WRKSRC}/tests/too-many-strtab2.s;  the old .c
# version would compile but not link with ld.lld(1),  the new .s assembles and
# links on all our archicture/compiler mixes with this workaorund.
# (closed) https://github.com/NixOS/patchelf/issues/350
TEST_DEPENDS +=		devel/gas

# strip `--build-ld' since base ld.bfd(1) 2.17 is too old to know it;
# this unbreaks the test build/allows to run tests in the first place.
TEST_FLAGS +=		libbuildid_so_LDFLAGS='$$(LDFLAGS_sharedlib)'
.endif

pre-test:
.if !${PROPERTIES:Mclang}
	ln -sf /usr/local/bin/gas ${WRKDIR}/bin/as
.endif

.include <bsd.port.mk>
