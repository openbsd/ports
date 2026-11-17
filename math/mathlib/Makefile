COMMENT =		mathematical library for Lean 4

# keep it synced with math/lean
V =			4.36.0
DISTNAME =		mathlib-${V}-cache
PKGNAME =		mathlib-${V}
EXTRACT_SUFX =		.tar.xz

# mathlib builds for hours from scratch, instead use a github action
# which fetches prebuild mathlib from official cache and repack it
SITES =			https://github.com/catap/mathlib-cache/releases/download/v${V}/

CATEGORIES =		math

HOMEPAGE =		https://leanprover-community.github.io/

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# Apache 2.0
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		math/lean

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/lean ${PREFIX}/src/lean
	for lib in ${WRKDIR}/.lake/packages/*/.lake/build/lib/lean; do \
		cd "$$lib"; \
		tar -cf - -s ',^\./Cache.*,,' \
		    -s ',.*\.hash$$,,' -s ',.*\.trace$$,,' . | \
		    tar -xf - -C ${PREFIX}/lib/lean; \
		find . -type f -name '*.olean' ! -path './Cache*' | \
		    sed 's,\.olean$$,.lean,' | \
		    tar -cf - -C "$${lib%/.lake/build/lib/lean}" -I - | \
		    tar -xf - -C ${PREFIX}/src/lean; \
	done

.include <bsd.port.mk>
