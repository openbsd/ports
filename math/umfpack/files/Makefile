# $OpenBSD: Makefile,v 1.1.1.1 2006/10/21 17:22:47 steven Exp $

LIB=	umfpack
SRCS=	umfpack_global.c umfpack_timer.c umfpack_tictoc.c \
	umf_i_analyze.c umf_i_apply_order.c umf_i_colamd.c umf_i_free.c \
	umf_i_fsize.c umf_i_is_permutation.c umf_i_malloc.c umf_i_realloc.c \
	umf_i_report_perm.c umf_i_singletons.c \
	umf_l_analyze.c umf_l_apply_order.c umf_l_colamd.c umf_l_free.c \
	umf_l_fsize.c umf_l_is_permutation.c umf_l_malloc.c umf_l_realloc.c \
	umf_l_report_perm.c umf_l_singletons.c \
	umf_di_lhsolve.c \
	umf_di_uhsolve.c umf_di_triplet_map_nox.c umf_di_triplet_nomap_x.c \
	umf_di_triplet_nomap_nox.c umf_di_triplet_map_x.c \
	umf_di_assemble_fixq.c umf_di_store_lu_drop.c umf_di_assemble.c \
	umf_di_blas3_update.c umf_di_build_tuples.c \
	umf_di_create_element.c umf_di_dump.c umf_di_extend_front.c \
	umf_di_garbage_collection.c umf_di_get_memory.c \
	umf_di_init_front.c umf_di_kernel.c umf_di_kernel_init.c \
	umf_di_kernel_wrapup.c umf_di_local_search.c umf_di_lsolve.c \
	umf_di_ltsolve.c umf_di_mem_alloc_element.c \
	umf_di_mem_alloc_head_block.c umf_di_mem_alloc_tail_block.c \
	umf_di_mem_free_tail_block.c umf_di_mem_init_memoryspace.c \
	umf_di_report_vector.c umf_di_row_search.c umf_di_scale_column.c \
	umf_di_set_stats.c umf_di_solve.c umf_di_symbolic_usage.c \
	umf_di_transpose.c umf_di_tuple_lengths.c umf_di_usolve.c \
	umf_di_utsolve.c umf_di_valid_numeric.c umf_di_valid_symbolic.c \
	umf_di_grow_front.c umf_di_start_front.c umf_di_2by2.c \
	umf_di_store_lu.c umf_di_scale.c \
	umfpack_di_wsolve.c \
	umfpack_di_col_to_triplet.c umfpack_di_defaults.c \
	umfpack_di_free_numeric.c umfpack_di_free_symbolic.c \
	umfpack_di_get_numeric.c umfpack_di_get_lunz.c \
	umfpack_di_get_symbolic.c umfpack_di_get_determinant.c \
	umfpack_di_numeric.c \
	umfpack_di_qsymbolic.c umfpack_di_report_control.c \
	umfpack_di_report_info.c umfpack_di_report_matrix.c \
	umfpack_di_report_numeric.c umfpack_di_report_perm.c \
	umfpack_di_report_status.c umfpack_di_report_symbolic.c \
	umfpack_di_report_triplet.c umfpack_di_report_vector.c \
	umfpack_di_solve.c umfpack_di_symbolic.c umfpack_di_transpose.c \
	umfpack_di_triplet_to_col.c umfpack_di_scale.c \
	umfpack_di_load_numeric.c umfpack_di_save_numeric.c \
	umfpack_di_load_symbolic.c umfpack_di_save_symbolic.c \
	umf_dl_lhsolve.c \
	umf_dl_uhsolve.c umf_dl_triplet_map_nox.c umf_dl_triplet_nomap_x.c \
	umf_dl_triplet_nomap_nox.c umf_dl_triplet_map_x.c \
	umf_dl_assemble_fixq.c umf_dl_store_lu_drop.c umf_dl_assemble.c \
	umf_dl_blas3_update.c umf_dl_build_tuples.c \
	umf_dl_create_element.c umf_dl_dump.c umf_dl_extend_front.c \
	umf_dl_garbage_collection.c umf_dl_get_memory.c \
	umf_dl_init_front.c umf_dl_kernel.c umf_dl_kernel_init.c \
	umf_dl_kernel_wrapup.c umf_dl_local_search.c umf_dl_lsolve.c \
	umf_dl_ltsolve.c umf_dl_mem_alloc_element.c \
	umf_dl_mem_alloc_head_block.c umf_dl_mem_alloc_tail_block.c \
	umf_dl_mem_free_tail_block.c umf_dl_mem_init_memoryspace.c \
	umf_dl_report_vector.c umf_dl_row_search.c umf_dl_scale_column.c \
	umf_dl_set_stats.c umf_dl_solve.c umf_dl_symbolic_usage.c \
	umf_dl_transpose.c umf_dl_tuple_lengths.c umf_dl_usolve.c \
	umf_dl_utsolve.c umf_dl_valid_numeric.c umf_dl_valid_symbolic.c \
	umf_dl_grow_front.c umf_dl_start_front.c umf_dl_2by2.c \
	umf_dl_store_lu.c umf_dl_scale.c umfpack_dl_wsolve.c \
	umfpack_dl_col_to_triplet.c umfpack_dl_defaults.c \
	umfpack_dl_free_numeric.c umfpack_dl_free_symbolic.c \
	umfpack_dl_get_numeric.c umfpack_dl_get_lunz.c \
	umfpack_dl_get_symbolic.c umfpack_dl_get_determinant.c \
	umfpack_dl_numeric.c \
	umfpack_dl_qsymbolic.c umfpack_dl_report_control.c \
	umfpack_dl_report_info.c umfpack_dl_report_matrix.c \
	umfpack_dl_report_numeric.c umfpack_dl_report_perm.c \
	umfpack_dl_report_status.c umfpack_dl_report_symbolic.c \
	umfpack_dl_report_triplet.c umfpack_dl_report_vector.c \
	umfpack_dl_solve.c umfpack_dl_symbolic.c umfpack_dl_transpose.c \
	umfpack_dl_triplet_to_col.c umfpack_dl_scale.c \
	umfpack_dl_load_numeric.c umfpack_dl_save_numeric.c \
	umfpack_dl_load_symbolic.c umfpack_dl_save_symbolic.c \
	umf_zi_lhsolve.c \
	umf_zi_uhsolve.c umf_zi_triplet_map_nox.c umf_zi_triplet_nomap_x.c \
	umf_zi_triplet_nomap_nox.c umf_zi_triplet_map_x.c \
	umf_zi_assemble_fixq.c umf_zi_store_lu_drop.c umf_zi_assemble.c \
	umf_zi_blas3_update.c umf_zi_build_tuples.c \
	umf_zi_create_element.c umf_zi_dump.c umf_zi_extend_front.c \
	umf_zi_garbage_collection.c umf_zi_get_memory.c \
	umf_zi_init_front.c umf_zi_kernel.c umf_zi_kernel_init.c \
	umf_zi_kernel_wrapup.c umf_zi_local_search.c umf_zi_lsolve.c \
	umf_zi_ltsolve.c umf_zi_mem_alloc_element.c \
	umf_zi_mem_alloc_head_block.c umf_zi_mem_alloc_tail_block.c \
	umf_zi_mem_free_tail_block.c umf_zi_mem_init_memoryspace.c \
	umf_zi_report_vector.c umf_zi_row_search.c umf_zi_scale_column.c \
	umf_zi_set_stats.c umf_zi_solve.c umf_zi_symbolic_usage.c \
	umf_zi_transpose.c umf_zi_tuple_lengths.c umf_zi_usolve.c \
	umf_zi_utsolve.c umf_zi_valid_numeric.c umf_zi_valid_symbolic.c \
	umf_zi_grow_front.c umf_zi_start_front.c umf_zi_2by2.c \
	umf_zi_store_lu.c umf_zi_scale.c umfpack_zi_wsolve.c \
	umfpack_zi_col_to_triplet.c umfpack_zi_defaults.c \
	umfpack_zi_free_numeric.c umfpack_zi_free_symbolic.c \
	umfpack_zi_get_numeric.c umfpack_zi_get_lunz.c \
	umfpack_zi_get_symbolic.c umfpack_zi_get_determinant.c \
	umfpack_zi_numeric.c \
	umfpack_zi_qsymbolic.c umfpack_zi_report_control.c \
	umfpack_zi_report_info.c umfpack_zi_report_matrix.c \
	umfpack_zi_report_numeric.c umfpack_zi_report_perm.c \
	umfpack_zi_report_status.c umfpack_zi_report_symbolic.c \
	umfpack_zi_report_triplet.c umfpack_zi_report_vector.c \
	umfpack_zi_solve.c umfpack_zi_symbolic.c umfpack_zi_transpose.c \
	umfpack_zi_triplet_to_col.c umfpack_zi_scale.c \
	umfpack_zi_load_numeric.c umfpack_zi_save_numeric.c \
	umfpack_zi_load_symbolic.c umfpack_zi_save_symbolic.c \
	umf_zl_lhsolve.c \
	umf_zl_uhsolve.c umf_zl_triplet_map_nox.c umf_zl_triplet_nomap_x.c \
	umf_zl_triplet_nomap_nox.c umf_zl_triplet_map_x.c \
	umf_zl_assemble_fixq.c umf_zl_store_lu_drop.c umf_zl_assemble.c \
	umf_zl_blas3_update.c umf_zl_build_tuples.c \
	umf_zl_create_element.c umf_zl_dump.c umf_zl_extend_front.c \
	umf_zl_garbage_collection.c umf_zl_get_memory.c \
	umf_zl_init_front.c umf_zl_kernel.c umf_zl_kernel_init.c \
	umf_zl_kernel_wrapup.c umf_zl_local_search.c umf_zl_lsolve.c \
	umf_zl_ltsolve.c umf_zl_mem_alloc_element.c \
	umf_zl_mem_alloc_head_block.c umf_zl_mem_alloc_tail_block.c \
	umf_zl_mem_free_tail_block.c umf_zl_mem_init_memoryspace.c \
	umf_zl_report_vector.c umf_zl_row_search.c umf_zl_scale_column.c \
	umf_zl_set_stats.c umf_zl_solve.c umf_zl_symbolic_usage.c \
	umf_zl_transpose.c umf_zl_tuple_lengths.c umf_zl_usolve.c \
	umf_zl_utsolve.c umf_zl_valid_numeric.c umf_zl_valid_symbolic.c \
	umf_zl_grow_front.c umf_zl_start_front.c umf_zl_2by2.c \
	umf_zl_store_lu.c umf_zl_scale.c umfpack_zl_wsolve.c \
	umfpack_zl_col_to_triplet.c umfpack_zl_defaults.c \
	umfpack_zl_free_numeric.c umfpack_zl_free_symbolic.c \
	umfpack_zl_get_numeric.c umfpack_zl_get_lunz.c \
	umfpack_zl_get_symbolic.c umfpack_zl_get_determinant.c \
	umfpack_zl_numeric.c \
	umfpack_zl_qsymbolic.c umfpack_zl_report_control.c \
	umfpack_zl_report_info.c umfpack_zl_report_matrix.c \
	umfpack_zl_report_numeric.c umfpack_zl_report_perm.c \
	umfpack_zl_report_status.c umfpack_zl_report_symbolic.c \
	umfpack_zl_report_triplet.c umfpack_zl_report_vector.c \
	umfpack_zl_solve.c umfpack_zl_symbolic.c umfpack_zl_transpose.c \
	umfpack_zl_triplet_to_col.c umfpack_zl_scale.c \
	umfpack_zl_load_numeric.c umfpack_zl_save_numeric.c \
	umfpack_zl_load_symbolic.c umfpack_zl_save_symbolic.c

.include <bsd.lib.mk>
