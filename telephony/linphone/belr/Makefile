COMMENT =	language recognition library

PKGNAME =	${MODULE}-${V:S/-alpha//}
MODULE =	belr

SHARED_LIBS +=	belr 0.0 # 1

CONFIGURE_ARGS =-DBUILD_SHARED_LIBS=YES \
		-DENABLE_UNIT_TESTS=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox
WANTLIB +=	${COMPILER_LIBCXX} bctoolbox c m

FIX_CRLF_FILES =	CMakeLists.txt

.include <bsd.port.mk>
