COMMENT =	library to manipulate VCard standard format

V =		4.5.22
MODULE =	belcard

SHARED_LIBS +=  belcard 0.0 # 1

CONFIGURE_ARGS =-DENABLE_STATIC=NO \
		-DENABLE_UNIT_TESTS=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox \
		telephony/linphone/belr
WANTLIB += ${COMPILER_LIBCXX} bctoolbox belr c m

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
