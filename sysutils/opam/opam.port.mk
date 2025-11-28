CATEGORIES +=	sysutils/opam

# Fuses for hooks for BUILD_DEPENDS, do-build and do-install
MODOPAM_BUILDDEP ?=	Yes
MODOPAM_BUILD ?=	Yes
MODOPAM_INSTALL ?=	Yes

# Opam packages options.
MODOPAM_WITH_DOC ?=	No
MODOPAM_WITH_TEST ?=	No

# Add sysutils/opam to BUILD_DEPENDS, and net/rsync to copying local repositories.
.if ${MODOPAM_BUILDDEP:L} == "yes"
BUILD_DEPENDS +=	sysutils/opam>=2.5 \
			net/rsync
.endif

# Default location of opam binary (provided by sysutils/opam).
# Uses --cli=X.Y to stick with X.Y options even if opam is upgraded.
MODOPAM_OPAM_BIN ?=	${LOCALBASE}/bin/opam --cli=2.5

# Default path for OPAMROOT.
MODOPAM_OPAMROOT ?=	${WRKDIR}/modopam-opamroot

# Opam packages to manipulate. Default to PKGSTEM.
MODOPAM_PACKAGES ?=		${PKGSTEM}
MODOPAM_PACKAGES_REPOSITORY ?=	${MODOPAM_PACKAGES}
MODOPAM_PACKAGES_BUILD ?=	${MODOPAM_PACKAGES}
MODOPAM_PACKAGES_INSTALL ?=	${MODOPAM_PACKAGES}

# convert "word1 word2" to "word1,word2"
.for x in ${MODOPAM_PACKAGES_REPOSITORY}
_MODOPAM_PACKAGES_REPOSITORY := ${_MODOPAM_PACKAGES_REPOSITORY},$x
.endfor
_MODOPAM_PACKAGES_REPOSITORY := ${_MODOPAM_PACKAGES_REPOSITORY:S/,//}

# Environment for opam binary.
MODOPAM_ENV +=	OPAMROOT=${MODOPAM_OPAMROOT} \
		OPAMCOLOR=never \
		OPAMERRLOGLEN=0 \
		OPAMINPLACEBUILD=true \
		OPAMJOBS=${MAKE_JOBS} \
		OPAMVERBOSE=1 \
		DUNE_CACHE=disabled

.if ${MODULES:Mlang/ocaml}
# fix bad interaction with lang/ocaml
# and restore OCAMLFIND_DESTDIR value to default.
MODOPAM_ENV +=	OCAMLFIND_DESTDIR=${MODOPAM_OPAMROOT}/${_MODOPAM_SWITCH}/lib
.endif

# build of ocamlbuild in opam will fail if devel/ocamlbuild is installed
MODOPAM_ENV +=	CHECK_IF_PREINSTALLED=false

.if ${MODOPAM_WITH_DOC:L} == "yes"
MODOPAM_ENV +=	OPAMWITHDOC=true
_MODOPAM_LIST_ARGS +=	--with-doc
.else
MODOPAM_ENV +=	OPAMWITHDOC=false
.endif

.if ${MODOPAM_WITH_TEST:L} == "yes"
MODOPAM_ENV +=	OPAMWITHTEST=true
_MODOPAM_LIST_ARGS +=	--with-test
.else
MODOPAM_ENV +=	OPAMWITHTEST=false
.endif

# Helper to shorten opam calls.
MODOPAM_OPAM_RUN = \
	${SETENV} ${MAKE_ENV} ${MODOPAM_ENV} ${MODOPAM_OPAM_BIN}

# opam repository path to use.
MODOPAM_REPO_NAME ?=	${PKGSTEM}-opam-YYYYMMDD
MODOPAM_REPO_DIR ?=	${WRKDIR}/${MODOPAM_REPO_NAME}

# opam repository commit to use when fetching a base repository with 
# modopam-repository target.
MODOPAM_REPO_COMMIT ?=	master

# Url for fetching the opam repository. Extracted directory is
# expected to be opam-repository-${MODOPAM_REPO_COMMIT} .
MODOPAM_REPO_URL ?=	https://github.com/ocaml/opam-repository/archive/${MODOPAM_REPO_COMMIT}.tar.gz

# Name of the default switch.
_MODOPAM_SWITCH ?=	ocaml-system

# internal variable. opam init is called several times.
_MODOPAM_OPAM_INIT_ARGS = \
	--reinit \
	--no-setup \
	--no-opamrc \
	--compiler=${_MODOPAM_SWITCH} \
	--kind=local

# internal variable. opam pin add is called several times.
_MODOPAM_OPAM_PIN_ADD_ARGS = \
	--kind=path \
	--no-action \
	--recursive \
	--yes

# internal variable. for opam list.
_MODOPAM_LIST_ARGS +=	\
	--resolve="${_MODOPAM_PACKAGES_REPOSITORY}"

# configure hook. initialize OPAMROOT.
MODOPAM_configure = \
	if [ ! -d "${MODOPAM_REPO_DIR}" ]; then \
		echo "error: opam.port.mk: no available repository" >&2 ; \
		echo "	see, make modopam-repository" >&2 ; \
		exit 1 ; \
	fi ; \
	${ECHO_MSG} "[modopam] opam init" ; \
	cd ${WRKBUILD} && ${MODOPAM_OPAM_RUN} init \
		${_MODOPAM_OPAM_INIT_ARGS} \
		${MODOPAM_REPO_DIR} ; \
	${ECHO_MSG} "[modopam] opam pin add ${WRKSRC}" ; \
	cd ${WRKBUILD} && ${MODOPAM_OPAM_RUN} pin add \
		${_MODOPAM_OPAM_PIN_ADD_ARGS} \
		${WRKSRC} ;

# Define the build target.
MODOPAM_BUILD_TARGET = \
	cd ${WRKBUILD} && ${MODOPAM_OPAM_RUN} install \
		--assume-depexts \
		--yes \
		${MODOPAM_PACKAGES_BUILD} ;

.if !target(do-build) && ${MODOPAM_BUILD:L} == "yes"
do-build:
	@${MODOPAM_BUILD_TARGET}
.endif

# Define the install target.
MODOPAM_INSTALL_TARGET = \
	cd ${WRKBUILD} && ${MODOPAM_OPAM_RUN} install \
		--destdir=${PREFIX} \
		--assume-depexts \
		--yes \
		${MODOPAM_PACKAGES_INSTALL} ; \
	for dir in ${PREFIX}/lib/* ; do \
		[ -r "$${dir}/META" ] && \
			mv -- "$${dir}" ${PREFIX}/lib/ocaml/ ; \
	done ; \
	if [ -d ${PREFIX}/lib/stublibs ] ; then \
		mv ${PREFIX}/lib/stublibs/* \
			${PREFIX}/lib/ocaml/stublibs ; \
		rmdir ${PREFIX}/lib/stublibs ; \
	fi ;

.if !target(do-install) && ${MODOPAM_INSTALL:L} == "yes"
do-install:
	@${MODOPAM_INSTALL_TARGET}
.endif

# Helper target to fetch and prepare an opam repository for opam-module.
# Warning, run as normal user.
# - opam init : needs network + filesystem write access
# - opam admin cache : needs network + filesystem write access
_MODOPAM_GEN_DIR ?=	/tmp
modopam-repository: patch
	rm -rf -- ${_MODOPAM_GEN_DIR}/${MODOPAM_REPO_NAME}

	ftp -o- ${MODOPAM_REPO_URL} | tar xzf - -C ${_MODOPAM_GEN_DIR}
	mv /tmp/opam-repository-${MODOPAM_REPO_COMMIT} \
		${_MODOPAM_GEN_DIR}/${MODOPAM_REPO_NAME}

	cd ${_MODOPAM_GEN_DIR} && ${MODOPAM_OPAM_BIN} init \
		--root=${_MODOPAM_GEN_DIR}/opamroot \
		${_MODOPAM_OPAM_INIT_ARGS} \
		${_MODOPAM_GEN_DIR}/${MODOPAM_REPO_NAME}

	cd ${_MODOPAM_GEN_DIR} && ${MODOPAM_OPAM_RUN} switch create \
		${_MODOPAM_SWITCH} \
		--root=${_MODOPAM_GEN_DIR}/opamroot

	cd ${_MODOPAM_GEN_DIR} && ${MODOPAM_OPAM_RUN} pin add \
		--root=${_MODOPAM_GEN_DIR}/opamroot \
		${_MODOPAM_OPAM_PIN_ADD_ARGS} \
		${WRKSRC}

	cd ${_MODOPAM_GEN_DIR}/${MODOPAM_REPO_NAME} && \
		${MODOPAM_OPAM_BIN} list \
			--root=${_MODOPAM_GEN_DIR}/opamroot \
			--columns=package \
			--normalise \
			${_MODOPAM_LIST_ARGS} \
	| xargs ${MODOPAM_OPAM_BIN} admin filter \
		--root=${_MODOPAM_GEN_DIR}/opamroot \
		--yes

	cd ${_MODOPAM_GEN_DIR}/${MODOPAM_REPO_NAME} && \
		${MODOPAM_OPAM_BIN} admin cache \
			--root=${_MODOPAM_GEN_DIR}/opamroot

	@rm -rf -- ${_MODOPAM_GEN_DIR}/opamroot

	@printf "\nThe repository is ready: ${_MODOPAM_GEN_DIR}/${MODOPAM_REPO_NAME}\n"

# Helper target to show external dependencies (from opam point of vue).
modopam-external: configure
	@${_PMAKE} _modopam-external-internal

# run as _pbuild.
_modopam-external-internal:
	@cd ${WRKBUILD} && ${MODOPAM_OPAM_RUN} list \
		--external \
		${_MODOPAM_LIST_ARGS}
