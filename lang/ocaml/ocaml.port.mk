# regular file usage for bytecode:
# PLIST               -- bytecode base files
# PFRAG.foo           -- bytecode files for FLAVOR == foo
# PFRAG.no-foo        -- bytecode files for FLAVOR != foo
# extended file usage for nativecode:
# PFRAG.native        -- nativecode base files
# PFRAG.foo-native    -- nativecode files for FLAVOR == foo
# PFRAG.no-foo-native -- nativecode files for FLAVOR != foo

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mocaml_native}
MODOCAML_NATIVE=Yes
# include nativecode base files
PKG_ARGS+=-Dnative=1
.else
MODOCAML_NATIVE=No
# remove native base file entry from PLIST
PKG_ARGS+=-Dnative=0
.endif

.if ${PROPERTIES:Mocaml_native_dynlink}
MODOCAML_NATDYNLINK=Yes
MODOCAML_OCAMLDOC?=ocamldoc.opt
# include native dynlink base files
PKG_ARGS+=-Ddynlink=1
.else
MODOCAML_NATDYNLINK=No
MODOCAML_OCAMLDOC?=ocamldoc
# remove native dynlink base file entry from PLIST
PKG_ARGS+=-Ddynlink=0
.endif

# Assume that we want to automatically add ocaml to BUILD_DEPENDS.
BUILD_DEPENDS +=	lang/ocaml
# Assume that we want to automatically add ocaml to RUN_DEPENDS.
# Can take three values:
# Yes, No or if-not-native (translates to Yes if native-code is unsupported)
MODOCAML_RUNDEP?=	Yes

.if ${MODOCAML_RUNDEP:L} == if-not-native && ${MODOCAML_NATIVE} == No
MODOCAML_RUNDEP =	Yes
.endif
.if ${MODOCAML_RUNDEP:L} == yes
RUN_DEPENDS+=		lang/ocaml
.endif

MAKE_ENV +=		OCAMLFIND_DESTDIR=${DESTDIR}${TRUEPREFIX}/lib/ocaml \
			OCAMLFIND_COMMANDS="ocamldoc=${MODOCAML_OCAMLDOC}"

MODOCAML_pre-fake = \
	${INSTALL_DATA_DIR} ${WRKINST}${LOCALBASE}/lib/ocaml/stublibs


######################################################################
#
# CONFIGURE_STYLE for oasis.
#
# Also overrides do-{build,install,test}
#
.if ${CONFIGURE_STYLE:L:Moasis}

ALL_TARGET ?= -build -doc
# XXX can't do ?= here, because INSTALL_TARGET is already initialized
# with default value
INSTALL_TARGET = -install
TEST_TARGET ?= -test
_MODOASIS_SETUP = ${WRKDIR}/oasis_setup.byte


######################################################################
# CONFIGURE
.if ${PROPERTIES:Mocaml_native}
_MODOASIS_OCAMLC = ocamlc.opt
.else
_MODOASIS_OCAMLC = ocamlc
.endif

. if ${CONFIGURE_STYLE:L:Moasis_setup}
BUILD_DEPENDS += sysutils/oasis
MODOASIS_configure += cd ${WRKSRC} && oasis setup &&
. endif
MODOASIS_configure += \
	${_MODOASIS_OCAMLC} -o ${_MODOASIS_SETUP} ${WRKSRC}/setup.ml && \
	cd ${WRKSRC} && \
	rm setup.cm[io] && \
	${SETENV} ${CONFIGURE_ENV} ${_MODOASIS_SETUP} -configure \
	--destdir ${WRKINST} \
	--mandir ${PREFIX}/man \
	--infodir ${PREFIX}/info \
	--override pkg_name ${PKGNAME:C/-[0-9].*//} \
	${CONFIGURE_ARGS}

######################################################################
# BUILD
BUILD_DEPENDS+= sysutils/findlib
MODOASIS_BUILD_TARGET = cd ${WRKSRC}
. for TARGET in ${ALL_TARGET}
MODOASIS_BUILD_TARGET += \
	&& ${SETENV} ${MAKE_ENV} ${_MODOASIS_SETUP} ${TARGET}
. endfor
. if !target(do-build)
do-build:
	${MODOASIS_BUILD_TARGET}
. endif

######################################################################
# INSTALL
MODOASIS_INSTALL_TARGET = cd ${WRKSRC}
. for TARGET in ${INSTALL_TARGET}
MODOASIS_INSTALL_TARGET += \
	&& ${SETENV} ${MAKE_ENV} ${_MODOASIS_SETUP} ${TARGET}
. endfor
. if !target(do-install)
do-install:
	${MODOASIS_INSTALL_TARGET}
. endif

######################################################################
# TEST
MODOASIS_TEST_TARGET = cd ${WRKSRC}
. for TARGET in ${TEST_TARGET}
MODOASIS_TEST_TARGET += \
	&& ${SETENV} ${MAKE_ENV} ${_MODOASIS_SETUP} ${TARGET}
. endfor
. if !target(do-test)
do-test:
	${MODOASIS_TEST_TARGET}
. endif

.endif
