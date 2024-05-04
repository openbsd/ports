COMMENT =	run independent games

V =		1.1
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

PORTHOME =	${WRKDIR}/porthome

# dirs and files in PORTHOME that are needed for unveil during 'make test'
post-extract:
	mkdir -p ${PORTHOME}/.{config,local/share,cache/mesa_shader_cache}
	mkdir -p ${PORTHOME}/.{mono,sndio}
	touch ${PORTHOME}/.X{authority,Compose,defaults}

.include <bsd.port.mk>
