# $OpenBSD: Makefile,v 1.6 2016/10/10 12:20:17 feinerer Exp $

COMMENT =		reverse engineers disassembler and debugger

DISTNAME =		radare2-${V}

# In radare, all libs have the same version
LIBV =			2.0	# 0.10.6
.for _lib in r_anal r_asm r_bin r_bp r_config r_cons r_core \
	r_crypto r_debug r_egg r_flags r_fs r_hash r_io r_lang \
	r_magic r_parse r_reg r_search r_socket r_syscall r_util
SHARED_LIBS+=		${_lib} ${LIBV}
.endfor

# uses pledge()
WANTLIB =		c capstone crypto kvm m pthread ssl util z zip

LIB_DEPENDS =		archivers/libzip \
			devel/capstone>=3.0.4p0

# --with-sysmagic triggers build error
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--with-libversion=${LIBV} \
			--with-openssl \
			--with-syscapstone \
			--with-syszip

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	sed -i 's/>mips/>mipsen/' ${WRKSRC}/libr/anal/p/anal_mips_cs.c

# https://github.com/radare/radare2/blob/master/doc/capstone.md
post-configure:
	sed -i 's|include/capstone|include|' ${WRKSRC}/config-user.mk

.include <bsd.port.mk>
