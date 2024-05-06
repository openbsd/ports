COMMENT =		Lisp Flavoured Erlang (LFE)

GH_ACCOUNT =		lfe
GH_PROJECT =		lfe
GH_TAGNAME =		2.1.4
REVISION =		0

CATEGORIES =		lang

HOMEPAGE =		https://lfe.io/

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

DISTFILES +=		${GH_DISTFILE}

# Apache License 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/erlang
MODERL_MODULES =	rebar3_proper	0.12.1 \
			proper		1.4.0

USE_GMAKE =		Yes

MAKE_FLAGS +=		MANDB=''
FAKE_FLAGS +=		MANINSTDIR=${DESTDIR}${PREFIX}/man

ALL_TARGET =		compile

TEST_TARGET =		tests
PORTHOME =		${WRKDIR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/lfe
	${SUBST_CMD} ${WRKSRC}/bin/lfescript

.include <bsd.port.mk>
