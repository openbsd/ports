# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:13 ajacoutot Exp $

COMMENT =		reverse engineers disassembler and debugger

DISTNAME =		radare2-${V}
REVISION =		0

# In radare, all libs have the same version
LIBV =			1.0	# 0.8.8
.for _lib in r_anal r_asm r_bin r_bp r_cmd r_config r_cons r_core r_db \
	r_debug r_diff r_egg r_flags r_fs r_hash r_io r_lang r_lib r_line \
	r_magic r_parse r_print r_reg r_search r_sign r_socket r_syscall \
	r_th r_util
SHARED_LIBS+=		${_lib} ${LIBV}
.endfor

WANTLIB =		c crypto m pthread ssl

CONFIGURE_ARGS +=	--with-libversion=${LIBV} \
			--mandir=${PREFIX}/man

.include <bsd.port.mk>
