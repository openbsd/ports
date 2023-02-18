COMMENT =	implementation of ZRTP keys exchange protocol

MODULE =	bzrtp

SHARED_LIBS +=  bzrtp 1.0 # 15

CONFIGURE_ARGS =-DENABLE_STATIC=NO \
		-DENABLE_TESTS=NO \
		-DENABLE_DOC=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox \
		databases/sqlite3 \
		textproc/libxml
WANTLIB += ${COMPILER_LIBCXX} bctoolbox m sqlite3 xml2

.include <bsd.port.mk>
