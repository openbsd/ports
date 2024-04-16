COMMENT =	terminal based presentation tool

MODGO_MODNAME =	github.com/maaslalani/slides
MODGO_VERSION = v0.9.0
DISTNAME =	slides-${MODGO_VERSION}

CATEGORIES =	textproc productivity
HOMEPAGE =	github.com/maaslalani/slides

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB +=	c pthread

MODULES =	lang/go

DOCDIR =	${PREFIX}/share/doc/slides
post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

# To allow patching.
WRKDIST = ${WRKSRC}

# slides can evaluate code blocks in presentations by shelling out to
# interpreters/compilers. Let's consider those "soft dependencies": we patch in
# their paths (where necessary), but don't depend on them.
#
# Requested a way to configure the paths here:
# https://github.com/maaslalani/slides/issues/222#issuecomment-2057220675
MODULES += lang/lua lang/ruby lang/python

MODLUA_BUILDDEP = No
MODLUA_RUNDEP = No

MODRUBY_BUILDDEP = No
MODRUBY_RUNDEP = No

MODPY_BUILDDEP = No
MODPY_RUNDEP = No

# The java MODULE can't be told to not add Java stuff to {RUN,BUILD}_DEPENDS,
# so we have to do this manually. Not ideal...
JAVA_V =	21
JAVA_BIN =	${LOCALBASE}/jdk-${JAVA_V}/bin/java

SUBST_VARS +=	MODLUA_BIN RUBY MODPY_BIN JAVA_BIN
pre-configure:
	${SUBST_CMD} ${WRKSRC}/internal/code/languages.go

.include "modules.inc"
.include <bsd.port.mk>
