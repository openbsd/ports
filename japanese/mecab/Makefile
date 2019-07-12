# $OpenBSD: Makefile,v 1.23 2019/07/12 20:47:15 sthen Exp $

# .libs/libmecab.so.0.0: undefined reference to `__sync_val_compare_and_swap_4'
# .libs/libmecab.so.0.0: undefined reference to `__sync_add_and_fetch_4'
BROKEN-hppa =	undefined refs to __sync operations

COMMENT-main =	japanese morphological analyzer engine
COMMENT-ipadic = IPA japanese dictionary for mecab

DISTNAME =	mecab-0.996
PKGNAME-main =	${DISTNAME}
PKGNAME-ipadic = mecab-ipadic-2.7.0
REVISION-main =	4
REVISION-ipadic = 4

SHARED_LIBS =	mecab	0.0 # 2.0

CATEGORIES =	japanese

HOMEPAGE =	http://taku910.github.io/mecab/

# BSD + IPADIC
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES = -main -ipadic

WANTLIB-main =	c iconv m pthread ${COMPILER_LIBCXX}
WANTLIB-ipadic =

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://distfiles.nl/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${PKGNAME-ipadic}-${IPADIC_VER}.tar.gz

LIB_DEPENDS-main = converters/libiconv ${MODGCC4_CPPLIBDEP}
RUN_DEPENDS-main = mecab-ipadic-*:japanese/mecab,-ipadic
RUN_DEPENDS-ipadic =


CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-liconv"

# Do not explicitly add -lstdc++.
# The test succeeds with clang even if libstdc++ is not present.
CONFIGURE_ENV += ac_cv_lib_stdcpp_main=no

IPADIC_VER =	20070801
IPADIC_FILES =	char.bin dicrc left-id.def matrix.bin pos-id.def \
		rewrite.def right-id.def sys.dic unk.dic

post-build:
	cd ${WRKDIR}/${PKGNAME-ipadic}-${IPADIC_VER} && \
	    ${WRKSRC}/src/mecab-dict-index -t utf-8

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mecab
	${INSTALL_DATA} ${WRKSRC}/mecabrc ${PREFIX}/share/examples/mecab
	${INSTALL_DATA_DIR} ${PREFIX}/share/mecab/dic/ipadic
	cd ${WRKDIR}/${PKGNAME-ipadic}-${IPADIC_VER} && \
	    ${INSTALL_DATA} ${IPADIC_FILES} ${PREFIX}/share/mecab/dic/ipadic

.include <bsd.port.mk>
