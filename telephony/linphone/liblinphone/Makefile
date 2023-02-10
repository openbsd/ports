COMMENT =	SIP library supporting voice/video calls and text messaging

MODULE =	liblinphone
V =		5.1.56
KV =		5.1.55
REVISION =	1

SHARED_LIBS +=	linphone	1.0 \
		linphone++	1.0 # 10

CONFIGURE_ARGS =-DENABLE_STATIC=NO \
		-DENABLE_UNIT_TESTS=NO \
		-DENABLE_STRICT=NO \
		-DENABLE_LIME_X3DH=NO \
		-DENABLE_FLEXIAPI=NO \
		-DENABLE_DB_STORAGE=NO # needs SOCI

BUILD_DEPENDS = textproc/py-stache \
		devel/py-six,python3 \
		devel/doxygen>=1.9.5

LIB_DEPENDS =	telephony/linphone/bctoolbox>=${KV} \
		telephony/linphone/mediastreamer2>=${KV} \
		telephony/linphone/ortp \
		telephony/linphone/belle-sip>=${KV} \
		telephony/linphone/belcard \
		telephony/linphone/belr \
		textproc/xerces-c

WANTLIB += ${COMPILER_LIBCXX} bctoolbox belcard bellesip belr
WANTLIB += bzrtp c iconv m mediastreamer ortp sqlite3 xerces-c
WANTLIB += xml2 z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/liblinphone
	mv ${WRKBUILD}/coreapi/help/doc/doxygen/c ${PREFIX}/share/doc/liblinphone
	mv ${WRKBUILD}/wrappers/cpp/cpp ${PREFIX}/share/doc/liblinphone

.include <bsd.port.mk>
