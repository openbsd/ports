# $OpenBSD: ocaml.port.mk,v 1.19 2012/08/21 00:24:22 avsm Exp $

# regular file usage for bytecode:
# PLIST               -- bytecode base files
# PFRAG.foo           -- bytecode files for FLAVOR == foo
# PFRAG.no-foo        -- bytecode files for FLAVOR != foo
# extended file usage for nativecode:
# PFRAG.native        -- nativecode base files
# PFRAG.foo-native    -- nativecode files for FLAVOR == foo
# PFRAG.no-foo-native -- nativecode files for FLAVOR != foo

OCAML_VERSION=4.00.0

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mocaml_native}
MODOCAML_NATIVE=Yes

# include nativecode base files
PKG_ARGS+=-Dnative=1

.if ${PROPERTIES:Mocaml_native_dynlink}
MODOCAML_NATDYNLINK=Yes

# include native dynlink base files
PKG_ARGS+=-Ddynlink=1

.else

MODOCAML_NATDYNLINK=No

# remove native dynlink base file entry from PLIST
PKG_ARGS+=-Ddynlink=0
.endif

.else

MODOCAML_NATIVE=No
RUN_DEPENDS+=	lang/ocaml=${OCAML_VERSION}

# remove native base file entry from PLIST
PKG_ARGS+=-Dnative=0
.endif

BUILD_DEPENDS+=	lang/ocaml=${OCAML_VERSION}
MAKE_ENV+= OCAMLFIND_DESTDIR=${DESTDIR}${TRUEPREFIX}/lib/ocaml

NAME ?= ${PKGNAME:C/-[0-9].*//}

MODOCAML_pre-fake = \
  	${SUDO} ${INSTALL_DATA_DIR} ${WRKINST}${LOCALBASE}/lib/ocaml/stublibs


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
REGRESS_TARGET ?= -test
_MODOASIS_SETUP = ${WRKDIR}/oasis_setup.byte

######################################################################
# CONFIGURE
.if ${PROPERTIES:Mocaml_native}
_MODOASIS_OCAMLC = ocamlc.opt
.else
_MODOASIS_OCAMLC = ocamlc
.endif
MODOASIS_configure = \
	${_MODOASIS_OCAMLC} -o ${_MODOASIS_SETUP} ${WRKSRC}/setup.ml && \
	cd ${WRKSRC} && \
	rm setup.cm[io] && \
	${SETENV} ${CONFIGURE_ENV} ${_MODOASIS_SETUP} -configure \
	--destdir ${WRKINST} \
	--mandir ${PREFIX}/man \
	--infodir ${PREFIX}/info \
	--override pkg_name ${NAME} \
	${CONFIGURE_ARGS}

######################################################################
# BUILD
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
# REGRESS
MODOASIS_REGRESS_TARGET = cd ${WRKSRC}
. for TARGET in ${REGRESS_TARGET}
MODOASIS_REGRESS_TARGET += \
	&& ${SETENV} ${MAKE_ENV} ${_MODOASIS_SETUP} ${TARGET}
. endfor
. if !target(do-regress)
do-regress: 
	${MODOASIS_REGRESS_TARGET}
. endif

.endif
