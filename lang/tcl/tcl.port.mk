CATEGORIES +=		lang/tcl

MODTCL_VERSION ?=	8.5

.if ${MODTCL_VERSION} == 8.5
_MODTCL_SPEC = 		tcl->=${MODTCL_VERSION},<8.6
MODTCL_LIB ?=		tcl85
.elif ${MODTCL_VERSION} == 8.6
_MODTCL_SPEC = 		tcl->=${MODTCL_VERSION},<8.7
MODTCL_LIB ?=		tcl86
.endif

MODTCL_BIN ?=		${LOCALBASE}/bin/tclsh${MODTCL_VERSION}
MODTCL_INCDIR ?=	${LOCALBASE}/include/tcl${MODTCL_VERSION}
MODTCL_TCLDIR ?=	${LOCALBASE}/lib/tcl
MODTCL_MODDIR ?=	${LOCALBASE}/lib/tcl/modules
MODTCL_LIBDIR ?=	${MODTCL_TCLDIR}/tcl${MODTCL_VERSION}
MODTCL_CONFIG ?=	${MODTCL_LIBDIR}/tclConfig.sh

MODTCL_BUILD_DEPENDS ?=	${_MODTCL_SPEC}:lang/tcl/${MODTCL_VERSION}
MODTCL_RUN_DEPENDS ?=	${_MODTCL_SPEC}:lang/tcl/${MODTCL_VERSION}
MODTCL_LIB_DEPENDS ?=	${_MODTCL_SPEC}:lang/tcl/${MODTCL_VERSION}
MODTCL_WANTLIB ?= 	${MODTCL_LIB}


# Handle the two most commonly used methods
# for starting up executable Tcl scripts.
# See http://wiki.tcl.tk/812 for more information.

# Set 'tclsh' for executable scripts (in-place modification).
# Do not convert (tcl|wi)sh to (tclsh|wish), or the MODTCL_WISH_ADJ
# macro below will be broken.
MODTCL_TCLSH_ADJ =	perl -pi \
	-e '$$. == 1 && s!/\S*(?:/env\s+|bin/)(?:tcl|wi)sh\S*(\s+.+)?$$!${MODTCL_BIN}$$1!;' \
	-e '$$. >= 3 && $$. <= 30 && s!exec\s+(?:tcl|wi)sh.*$$!exec ${MODTCL_BIN} "\$$0" \$${1+"\$$@"}!;' \
	-e 'close ARGV if eof;'

# Same for 'wish'.
MODTCL_WISH_ADJ =	${MODTCL_TCLSH_ADJ:S/tclsh/wish/}

SUBST_VARS +=		MODTCL_VERSION MODTCL_BIN
