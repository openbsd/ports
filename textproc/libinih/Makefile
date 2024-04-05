COMMENT=		simple .INI file parser in C

V=			58
DIST_TUPLE=		github benhoyt inih r${V} .
PKGNAME=		libinih-${V}

SHARED_LIBS += inih                      0.0 # 0
SHARED_LIBS += INIReader                 0.0 # 0

CATEGORIES=		textproc devel

# BSD
PERMIT_PACKAGE=		Yes

# C++
COMPILER=	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX}

MODULES=		devel/meson


.include <bsd.port.mk>
