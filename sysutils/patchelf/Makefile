COMMENT =	utility for modifying existing ELF executables and libraries

V =			0.18.0
DISTNAME =		patchelf-${V}
SITES =			https://github.com/NixOS/patchelf/releases/download/${V}/
REVISION =		1

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=		${COMPILER_LIBCXX} c m

# -std=c++17
COMPILER =		base-clang ports-gcc

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.arch.mk>

# 0.18.0 amd64:   TOTAL: 56, PASS: 52, FAIL:  2
# 0.18.0 sparc64: TOTAL: 56, PASS: 48, FAIL:  6 (3 SEGVs)
TEST_TARGET =		check

.if !${PROPERTIES:Mclang}
# use newer ports as(1) since base's 2.17 is too old to accept a type argument
# for `.section' in ${WRKSRC}/tests/too-many-strtab2.s;
# the old .c version would compile but not link with ld.lld(1), the new .s
# assembles and links on all our archicture/compiler mixes with this workaorund.
# (closed) https://github.com/NixOS/patchelf/issues/350
TEST_DEPENDS +=		devel/gas

pre-test:
	ln -sf ${LOCALBASE}/bin/gas ${WRKDIR}/bin/as
.endif

.if !${PROPERTIES:Mlld}
# strip `--build-ld' since base ld.bfd(1) 2.17 is too old to know it;
# this unbreaks the test build/allows to run tests in the first place.
TEST_FLAGS +=		libbuildid_so_LDFLAGS='$$(LDFLAGS_sharedlib)'
.endif

post-install:
	# fix manual section for ld.so
	sed -i -e '/^\.BR ld\.so/s,8,1,' ${PREFIX}/man/man1/patchelf.1

.include <bsd.port.mk>
