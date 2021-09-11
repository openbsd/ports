# $OpenBSD: Makefile,v 1.16 2021/09/11 09:44:46 kevlo Exp $

COMMENT =		weighted finite-state transducers library

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME =		openfst-1.8.1

SHARED_LIBS +=		fst			1.1	# 24.0
SHARED_LIBS +=		fstscript		1.1	# 24.0
SHARED_LIBS +=		fstcompact		0.0	# 24.0
SHARED_LIBS +=		fstcompressscript	0.0	# 24.0
SHARED_LIBS +=		fstconst		0.0	# 24.0
SHARED_LIBS +=		fstfar			0.0	# 24.0
SHARED_LIBS +=		fstfarscript		0.0	# 24.0
SHARED_LIBS +=		fstlinearscript		0.0	# 24.0
SHARED_LIBS +=		fstlookahead		0.0	# 24.0
SHARED_LIBS +=		fstpdtscript		0.0	# 24.0
SHARED_LIBS +=		fstmpdtscript		0.0	# 24.0
SHARED_LIBS +=		fstngram		0.0	# 24.0
SHARED_LIBS +=		fstspecial		0.0	# 24.0

CATEGORIES =		math devel textproc

HOMEPAGE =		http://www.openfst.org/twiki/bin/view/FST/WebHome

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m ${COMPILER_LIBCXX}

# c++17
COMPILER =		base-clang ports-gcc

MASTER_SITES =		http://www.openfst.org/twiki/pub/FST/FstDownload/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-bin		\
			--enable-compact-fsts	\
			--enable-compress	\
			--enable-const-fsts	\
			--enable-far		\
			--enable-fsts		\
			--enable-linear-fsts	\
			--enable-lookahead-fsts	\
			--enable-mpdt		\
			--enable-ngram-fsts	\
			--enable-pdt		\
			--enable-special

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV +=	CXXFLAGS="${CXXFLAGS} -msse -msse2 -mfpmath=sse"
.endif

.include <bsd.port.mk>
