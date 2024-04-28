COMMENT =	run independent games

V =		1.0
DISTNAME =	rigg-${V}
CATEGORIES =	games

HOMEPAGE =	https://github.com/rfht/rigg
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c hl hl_module monosgen-2.0

SITES =		https://github.com/rfht/rigg/releases/download/${V}/

MODULES =	lang/mono

LIB_DEPENDS =	lang/hashlink \
		lang/mono

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rigg ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKBUILD}/rigg.1 ${PREFIX}/man/man1/

do-test:
	cd ${WRKSRC}/test; make clean regress

.include <bsd.port.mk>
