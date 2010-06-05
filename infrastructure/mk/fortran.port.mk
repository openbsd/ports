# $OpenBSD: fortran.port.mk,v 1.6 2010/06/05 16:38:47 espie Exp $

.if ${COMPILER_VERSION:L:Mgcc[34]*}
MODFORTRAN_LIB_DEPENDS77 = g2c::devel/libf2c
MODFORTRAN_WANTLIB77 =
MODFORTRAN_BUILD_DEPENDS77 = ::lang/g77 ::devel/libf2c
.else
MODFORTRAN_LIB_DEPENDS77 = g2c::devel/libf2c-old
MODFORTRAN_WANTLIB77 += 
MODFORTRAN_BUILD_DEPENDS77 = ::lang/g77-old ::devel/libf2c-old
.endif

.if ${MODFORTRAN_WANTG77:L} == "yes"
MODFORTRAN_LIB_DEPENDS += ${MODFORTRAN_LIB_DEPENDS77}
MODFORTRAN_WANTLIB += ${MODFORTRAN_WANTLIB77}
MODFORTRAN_BUILD_DEPENDS += ${MODFORTRAN_BUILD_DEPENDS77}
MODFORTRAN_post-patch = \
if test -e /usr/bin/g77 -o -e /usr/bin/f77; then \
    echo "Error: remove old fortran compiler /usr/bin/f77 /usr/bin/g77"; \
    exit 1; \
fi
.endif
