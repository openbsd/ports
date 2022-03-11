CATEGORIES +=	lang/lua

#
# Handle multiple versions/flavors.
# Defaults to MODLUA_DEFAULT_VERSION if no FLAVOR is set.
#

# Define the default version and use that if MODLUA_VERSION is not set.
MODLUA_DEFAULT_VERSION =	5.1

FLAVOR ?=		# empty

# without a flavor, assume ${MODLUA_DEFAULT_VERSION}
.if ${FLAVOR:Mlua52}
MODLUA_VERSION =		5.2
.elif ${FLAVOR:Mlua53}
MODLUA_VERSION =		5.3
.else
MODLUA_VERSION ?=		${MODLUA_DEFAULT_VERSION}
.endif

.if "${MODLUA_VERSION}" == "5.1"
_MODLUA_PKG_PREFIX =	lua
MODLUA_FLAVOR =		# empty
.elif "${MODLUA_VERSION}" == "5.2"
_MODLUA_PKG_PREFIX =	lua52
MODLUA_FLAVOR =		lua52
.elif "${MODLUA_VERSION}" == "5.3"
_MODLUA_PKG_PREFIX =	lua53
MODLUA_FLAVOR =		lua53
.else
ERRORS +=		"Invalid MODLUA_VERSION set: ${MODLUA_VERSION}."
.endif

# Based on lua version, adjust the prefix. But don't change the prefix
# of default (5.1) packages. Unless it's just a standalone application
# that happens to embed lua (in which case MODLUA_SA needs to be set
# and we'll just append the flavor suffix.
MODLUA_SA ?=	No

.if "${MODLUA_VERSION}" != "5.1"
.if !${MODLUA_SA:L:Myes}
FULLPKGNAME ?=	${PKGNAME:S/^lua/${_MODLUA_PKG_PREFIX}/}
.endif
.endif

#
# Shorthand variables used for common tasks, e.g. pkg-config use ${MODLUA_DEP}.
#
MODLUA_DEP_VERSION ?=	${MODLUA_VERSION:S/.//g}
MODLUA_DEP =		lua${MODLUA_DEP_VERSION}

MODLUA_WANTLIB =	lua${MODLUA_VERSION}
MODLUA_LIB =		-l${MODLUA_WANTLIB}

_MODLUA_RUN_DEPENDS =	lang/lua/${MODLUA_VERSION}

MODLUA_LIB_DEPENDS =	${_MODLUA_RUN_DEPENDS}

MODLUA_BIN =		${LOCALBASE}/bin/lua${MODLUA_DEP_VERSION}

# Propagate the flavor to all dependencies
.for r in ${MODLUA_RUN_DEPENDS}
_MODLUA_RUN_DEPS +=	${r},${MODLUA_FLAVOR}
.endfor

.for b in ${MODLUA_BUILD_DEPENDS}
_MODLUA_BUILD_DEPENDS +=	${b},${MODLUA_FLAVOR}
.endfor

.for x in ${MODLUA_TEST_DEPENDS}
_MODLUA_TEST_DEPENDS +=${x},${MODLUA_FLAVOR}
.endfor

#
# Default directories
#

# Where the lua distribution headers have been installed to.
MODLUA_INCL_DIR =	${LOCALBASE}/include/lua-${MODLUA_VERSION}/

# Where the example will be installed
MODLUA_EXAMPLEDIR =	${PREFIX}/share/examples/${FULLPKGNAME}/

# Where the docs will be installed
MODLUA_DOCDIR =		${PREFIX}/share/doc/${FULLPKGNAME}/

# Where the lua libraries will be installed to
MODLUA_LIBDIR =		${PREFIX}/lib/lua/${MODLUA_VERSION}/

# Where the lua modules will be installed to
MODLUA_DATADIR =	${PREFIX}/share/lua/${MODLUA_VERSION}/

#
# Fixup run/build dependencies if needed
#
MODLUA_RUNDEP ?=	Yes
MODLUA_BUILDDEP ?=	Yes

.if ${MODLUA_RUNDEP:L} == yes
RUN_DEPENDS +=		${_MODLUA_RUN_DEPENDS} \
			${_MODLUA_RUN_DEPS}
.endif

.if ${NO_BUILD:L} == "no" && "${MODLUA_BUILDDEP:L}" == "yes"
BUILD_DEPENDS +=	${_MODLUA_BUILD_DEPENDS} \
			${_MODLUA_RUN_DEPENDS}
.endif

TEST_DEPENDS +=	${_MODLUA_TEST_DEPENDS}

SUBST_VARS +=	MODLUA_VERSION MODLUA_LIB MODLUA_INCL_DIR \
		MODLUA_EXAMPLEDIR MODLUA_DOCDIR MODLUA_LIBDIR \
		MODLUA_DATADIR MODLUA_DEP MODLUA_DEP_VERSION \
		MODLUA_BIN
