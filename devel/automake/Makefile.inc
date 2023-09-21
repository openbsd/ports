COMMENT ?=	GNU Standards-compliant Makefile generator
HOMEPAGE ?=	https://www.gnu.org/software/automake/
SITES ?=	${SITE_GNU:=automake/}

SUFFIX ?=	-${VERSION}
SUBST_VARS +=	SUFFIX PKGSPEC
CATEGORIES +=	devel

# XXX check for new versions. So far, automake-1.16 is still GPLv2
# GPLv2
PERMIT_PACKAGE ?=	Yes

# we're not a python port, don't subst py- prefix
UPDATE_PLIST_ARGS +=	-i MODPY_PY_PREFIX

PORTROACH ?=		limit:^${VERSION}

BUILD_DEPENDS +=	${RUN_DEPENDS}
CONFIGURE_ARGS +=	--infodir=${PREFIX}/info
CONFIGURE_STYLE ?=	gnu

MAKE_FLAGS +=		pkgvdatadir=${PREFIX}/share/automake${SUFFIX} \
			APIVERSION=${VERSION}
FAKE_FLAGS +=		docdir=${PREFIX}/share/doc/automake${SUFFIX}
TEST_ENV +=		MAKE=${GMAKE}

AUTOCONF_VERSION ?=
.if ${AUTOCONF_VERSION} != ""
RUN_DEPENDS +=		${MODGNU_AUTOCONF_DEPENDS}
TEST_DEPENDS +=		${MODGNU_AUTOCONF_DEPENDS}
CONFIGURE_ENV +=	AUTOCONF_VERSION=${AUTOCONF_VERSION}
TEST_ENV +=		AUTOCONF_VERSION=${AUTOCONF_VERSION}
.endif

.if ${VERSION} != 1.4
pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/automake.texi
.endif

.if ${VERSION} != 1.4 && ${VERSION} != 1.8
MODULES =		lang/python
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
TEST_DEPENDS +=		${BASE_PKGPATH} \
			${MODPY_RUN_DEPENDS} \
			devel/libtool \
			devel/gmake \
			archivers/bzip2 \
			devel/bison \
			emacs->=24:editors/emacs \
			devel/dejagnu

pre-test:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
.endif

do-test:
	@cd ${WRKBUILD} && \
	    exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
		${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
		-f ${MAKE_FILE} ${TEST_TARGET}
