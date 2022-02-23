# $OpenBSD: Makefile,v 1.10 2022/02/23 01:43:12 kn Exp $

COMMENT =	utility for modifying existing ELF executables and libraries

V =			0.14.5
DISTNAME =		patchelf-${V}
MASTER_SITES =		https://github.com/NixOS/patchelf/releases/download/${V}/

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
# sparc64: TOTAL: 45, PASS: 32, FAIL: 13 (needs fixes/disabling to run)
TEST_TARGET =		check

.if !${PROPERTIES:Mclang}
# use newer ports as(1) ports since base's 2.17 is too old to accept a type
# argument for `.section' in ${WRKSRC}/tests/too-many-strtab2.s;  the old .c
# version would compile but not link with ld.lld(1),  the new .s assembles and
# links on all our archicture/compiler mixes with this workaorund.
# (closed) https://github.com/NixOS/patchelf/issues/350
TEST_DEPENDS +=		devel/gas

pre-test:
.if !${PROPERTIES:Mclang}
	ln -sf /usr/local/bin/gas ${WRKDIR}/bin/as
.endif

.include <bsd.port.mk>
