# src/codec_scid5.h:532:40: error: non-constant-expression cannot be narrowed from type 'std::tuple_element<1, std::pair <unsigned char, unsigned long long>>::type' (aka 'unsigned long long') to 'std::basic_string_view::size_type' (aka 'unsigned long') in initializer list [-Wc++11-narrowing]
ONLY_FOR_ARCHS = ${LP64_ARCHS}

V =		5.0.2
COMMENT =	chess database software
DISTNAME =	scid_src_${V}
PKGNAME =	scid-${V}
EXTRACT_SUFX =	.zip
CATEGORIES =	games x11
REVISION =	0

HOMEPAGE =	https://scid.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODTCL_WANTLIB} c m

SITES =		${SITE_SOURCEFORGE:=scid/}

# C++20
COMPILER =	base-clang ports-gcc

MODULES =	lang/python \
		x11/tk
MODTK_VERSION =	8.6
MODPY_ADJ_FILES =	scripts/pgnfix.py

LIB_DEPENDS =	${MODTCL_LIB_DEPENDS}

RUN_DEPENDS =	${MODTK_RUN_DEPENDS}

CONFIGURE_STYLE =	simple

USE_GMAKE =	Yes
MAKE_FLAGS =	CXX="${CXX}"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/scid-${V}
FIX_CRLF_FILES = engines/togaII1.2.1a/src/Makefile

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/configure
	sed -i -e 's,$${CXX},${CXX},g' -e 's,$${CXXFLAGS},${CXXFLAGS},g' -e \
		's,$${LOCALBASE},${LOCALBASE},g' ${WRKSRC}/configure
	sed -i 's,$${CXXFLAGS},${CXXFLAGS},g' \
		${WRKSRC}/engines/togaII1.2.1a/src/Makefile

post-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/scripts/spf2spi.tcl
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/tcl/contrib/ezsmtp/install.tcl
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/tcl/lang/checklangs.tcl
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/tcl/lang/propagatelang.tcl
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/tcl/lang/removetoken.tcl

post-install:
	rm -f ${PREFIX}/share/scid/tcl/utils/tooltip.tcl.orig.port

.include <bsd.port.mk>
