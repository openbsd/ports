# $OpenBSD: Makefile,v 1.23 2020/07/21 07:41:51 jasper Exp $

COMMENT =		libre and portable reverse engineering framework

V =			4.5.0
SUBST_VARS +=		V

GH_PROJECT =		radare2
GH_TAGNAME =		${V}

# When updating, use the output from the command below to set
# the extra distfiles so as not to invoke clone_3rd_repo.sh during build:
# grep -E '^TS_TIP' ${WRKSRC}/shlr/Makefile
TREESITTER_COMMIT =	86a5dabb
MASTER_SITES0 =		https://github.com/tree-sitter/tree-sitter/archive/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			treesitter-{}${TREESITTER_COMMIT}.tar.gz:0

# In radare, all libs have the same version
LIBV =			8.0	# 4.4.0
.for _lib in r_anal r_asm r_bin r_bp r_config r_cons r_core \
	r_crypto r_debug r_egg r_flag r_fs r_hash r_io r_lang \
	r_main r_magic r_parse r_reg r_search r_socket \
	r_syscall r_util r2
SHARED_LIBS+=		${_lib} ${LIBV}
.endfor

# uses pledge()
WANTLIB =		c capstone crypto kvm m pthread ssl util uv z zip

DEBUG_PACKAGES =	${BUILD_PACKAGES}

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

# Requires downloading a number of test binaries
TEST_DEPENDS =		devel/git \
			textproc/jq
TEST_IS_INTERACTIVE =	Yes
TEST_TARGET =		tests

post-extract:
	mv ${WRKDIR}/tree-sitter-${TREESITTER_COMMIT}* ${WRKSRC}/shlr/tree-sitter

post-patch:
	sed -i 's/>mips/>mipsen/' ${WRKSRC}/libr/anal/p/anal_mips_cs.c

# https://github.com/radare/radare2/blob/master/doc/capstone.md
post-configure:
	sed -i 's|include/capstone|include|' ${WRKSRC}/config-user.mk

.include <bsd.port.mk>
