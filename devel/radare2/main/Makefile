# $OpenBSD: Makefile,v 1.16 2019/11/01 15:54:58 jasper Exp $

COMMENT =		reverse engineers disassembler and debugger

V =			4.0.0
SUBST_VARS +=		V

GH_PROJECT =		radare2
GH_TAGNAME =		${V}

# In radare, all libs have the same version
LIBV =			7.0	# 4.0.0
.for _lib in r_anal r_asm r_bin r_bp r_config r_cons r_core \
	r_crypto r_debug r_egg r_flag r_fs r_hash r_io r_lang \
	r_main r_magic r_parse r_reg r_search r_socket \
	r_syscall r_util r2
SHARED_LIBS+=		${_lib} ${LIBV}
.endfor

# uses pledge()
WANTLIB =		c capstone crypto kvm m pthread ssl util uv z zip

LIB_DEPENDS =		archivers/libzip \
			devel/capstone/main>=3.0.4p0 \
			devel/libuv

# --with-sysmagic triggers build error
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--with-libversion=${LIBV} \
			--with-openssl \
			--with-syscapstone \
			--with-syszip

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV =		HOST_CC="${CC}"

post-patch:
	sed -i 's/>mips/>mipsen/' ${WRKSRC}/libr/anal/p/anal_mips_cs.c

# https://github.com/radare/radare2/blob/master/doc/capstone.md
post-configure:
	sed -i 's|include/capstone|include|' ${WRKSRC}/config-user.mk

.include <bsd.port.mk>
