COMMENT =		weighted finite-state transducers library

DISTNAME =		openfst-1.8.4

SHARED_LIBS +=		fst			4.0	# 26.0
SHARED_LIBS +=		fstscript		4.0	# 26.0
SHARED_LIBS +=		fstcompact		3.0	# 26.0
SHARED_LIBS +=		fstcompressscript	3.0	# 26.0
SHARED_LIBS +=		fstconst		2.0	# 26.0
SHARED_LIBS +=		fstfar			1.0	# 26.0
SHARED_LIBS +=		fstfarscript		3.0	# 26.0
SHARED_LIBS +=		fstlinearscript		1.0	# 26.0
SHARED_LIBS +=		fstlookahead		3.0	# 26.0
SHARED_LIBS +=		fstpdtscript		3.0	# 26.0
SHARED_LIBS +=		fstmpdtscript		2.1	# 26.0
SHARED_LIBS +=		fstngram		3.0	# 26.0
SHARED_LIBS +=		fstspecial		2.0	# 26.0

CATEGORIES =		math devel textproc

HOMEPAGE =		https://www.openfst.org/twiki/bin/view/FST/WebHome

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m ${COMPILER_LIBCXX}

# c++17
COMPILER =		base-clang ports-gcc

SITES =			http://www.openfst.org/twiki/pub/FST/FstDownload/

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
