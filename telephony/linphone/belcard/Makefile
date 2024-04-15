COMMENT =	library to manipulate VCard standard format

MODULE =	belcard

SHARED_LIBS +=  belcard 0.0 # 1

CONFIGURE_ARGS =-DBUILD_SHARED_LIBS=YES \
		-DENABLE_UNIT_TESTS=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox \
		telephony/linphone/belr
WANTLIB += ${COMPILER_LIBCXX} bctoolbox belr c m

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
