# $OpenBSD: Makefile,v 1.1.1.1 2006/10/21 17:22:47 steven Exp $

COMMENT=	"unsymmetric multifrontal sparse LU factorization package"

DISTNAME=	UMFPACK
PKGNAME=	${DISTNAME:L}-5.0.1
SHARED_LIBS=	umfpack	0.0

CATEGORIES=	math

HOMEPAGE=	http://www.cise.ufl.edu/research/sparse/umfpack/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

AMD_DIR=	math/amd
BUILD_DEPENDS=	::${AMD_DIR}:patch
RUN_DEPENDS=	::${AMD_DIR}

MASTER_SITES=	${HOMEPAGE}/current/
MASTER_SITES0=	${HOMEPAGE}../UFconfig/current/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} UFconfig.tar.gz:0
DIST_SUBDIR=	${PKGNAME}
WRKSRC=		${WRKDIST}/Source

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBumfpack_VERSION:R} \
		SHLIB_MINOR=${LIBumfpack_VERSION:E}
FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no
CFLAGS+=	-I${WRKDIST}/Include -I${WRKDIR}/UFconfig \
		-I${WRKDIR}/${AMD_DIR}/AMD/Include

SRC1=	analyze apply_order colamd free fsize is_permutation malloc \
	realloc report_perm singletons
SRC2=	ltsolve utsolve
SRC3=	assemble blas3_update build_tuples create_element dump \
	extend_front garbage_collection get_memory init_front \
	kernel kernel_init kernel_wrapup local_search lsolve \
        ltsolve mem_alloc_element mem_alloc_head_block \
	mem_alloc_tail_block mem_free_tail_block mem_init_memoryspace \
        report_vector row_search scale_column set_stats solve \
	symbolic_usage transpose tuple_lengths usolve utsolve \
	valid_numeric valid_symbolic grow_front start_front 2by2 \
        store_lu scale
SRC4=	col_to_triplet defaults free_numeric free_symbolic get_numeric \
	get_lunz get_symbolic get_determinant numeric qsymbolic \
	report_control report_info report_matrix report_numeric report_perm \
        report_status report_symbolic report_triplet report_vector solve \
	symbolic transpose triplet_to_col scale load_numeric save_numeric \
        load_symbolic save_symbolic

pre-configure:
	@echo "#define DINT 1" > ${WRKSRC}/di.c
	@echo "#define DLONG 1" > ${WRKSRC}/dl.c
	@echo "#define ZINT 1" > ${WRKSRC}/zi.c
	@echo "#define ZLONG 1" > ${WRKSRC}/zl.c
	@echo "#define CONJUGATE_SOLVE 1" > ${WRKSRC}/conjugate_solve.c
	@echo "#define DO_MAP 1" > ${WRKSRC}/do_map.c
	@echo "#define DO_VALUES 1" > ${WRKSRC}/do_values.c
	@echo "#define FIXQ 1" > ${WRKSRC}/fixq.c
	@echo "#define DROP 1" > ${WRKSRC}/drop.c
	@echo "#define WSOLVE 1" > ${WRKSRC}/wsolve.c
.for s in ${SRC1}
	@cd ${WRKSRC} && cat di.c umf_${s}.c > umf_i_${s}.c
	@cd ${WRKSRC} && cat dl.c umf_${s}.c > umf_l_${s}.c
.endfor
.for i in di dl zi zl
. for s in ${SRC2}
	@cd ${WRKSRC} && cat ${i}.c conjugate_solve.c umf_${s}.c > umf_${i}_${s:S/t/h/}.c
. endfor
	@cd ${WRKSRC} && cat ${i}.c do_map.c umf_triplet.c > umf_${i}_triplet_map_nox.c
	@cd ${WRKSRC} && cat ${i}.c do_values.c umf_triplet.c > umf_${i}_triplet_nomap_x.c
	@cd ${WRKSRC} && cat ${i}.c umf_triplet.c > umf_${i}_triplet_nomap_nox.c
	@cd ${WRKSRC} && cat ${i}.c do_map.c do_values.c umf_triplet.c > umf_${i}_triplet_map_x.c
	@cd ${WRKSRC} && cat ${i}.c fixq.c umf_assemble.c > umf_${i}_assemble_fixq.c
	@cd ${WRKSRC} && cat ${i}.c drop.c umf_store_lu.c > umf_${i}_store_lu_drop.c
. for s in ${SRC3}
	@cd ${WRKSRC} && cat ${i}.c umf_${s}.c > umf_${i}_${s}.c
. endfor
	@cd ${WRKSRC} && cat ${i}.c wsolve.c umfpack_solve.c > umfpack_${i}_wsolve.c
. for s in ${SRC4}
	@cd ${WRKSRC} && cat ${i}.c umfpack_${s}.c > umfpack_${i}_${s}.c
. endfor
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/umfpack
	${INSTALL_DATA} ${WRKDIST}/Include/*.h ${PREFIX}/include/umfpack
	${INSTALL_DATA} ${WRKDIR}/UFconfig/UFconfig.h ${PREFIX}/include/umfpack

.include <bsd.port.mk>
