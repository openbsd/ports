# $OpenBSD: tcl.port.mk,v 1.14 2013/02/02 11:15:33 stu Exp $

CATEGORIES +=		lang/tcl

MODTCL_VERSION ?=	8.5

.if ${MODTCL_VERSION} == 8.4
_MODTCL_SPEC = 		tcl->=${MODTCL_VERSION},<8.5
MODTCL_LIB ?=		tcl84
.elif ${MODTCL_VERSION} == 8.5
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
MODTCL_TCLSH_ADJ =	perl -pi \
			-e '$$. == 1 && s!env (tclsh|wish).*$$!env tclsh${MODTCL_VERSION}!;' \
			-e '$$. >= 3 && $$. <= 30 && s!exec (tclsh|wish).*$$!exec tclsh${MODTCL_VERSION} "\$$0" \$${1+"\$$@"}!;' \
			-e 'close ARGV if eof;'

# Set 'wish' for executable scripts (in-place modification).
MODTCL_WISH_ADJ =	${MODTCL_TCLSH_ADJ:S/tclsh${MODTCL_VERSION}/wish${MODTCL_VERSION}/}


SUBST_VARS +=		MODTCL_VERSION MODTCL_BIN

