COMMENT =	implementation of ZRTP keys exchange protocol

MODULE =	bzrtp

SHARED_LIBS +=  bzrtp 2.0 # 15

CONFIGURE_ARGS =-DBUILD_SHARED_LIBS=YES \
		-DENABLE_TESTS=NO \
		-DENABLE_DOC=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox \
		databases/sqlite3
WANTLIB += ${COMPILER_LIBCXX} bctoolbox m sqlite3

.include <bsd.port.mk>
