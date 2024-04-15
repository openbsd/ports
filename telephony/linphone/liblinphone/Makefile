COMMENT =	SIP library supporting voice/video calls and text messaging

MODULE =	liblinphone

SHARED_LIBS +=	linphone	4.0 \
		linphone++	4.0 # 10

CONFIGURE_ARGS =-DBUILD_SHARED_LIBS=YES \
		-DENABLE_CONSOLE_UI=YES \
		-DENABLE_UNIT_TESTS=NO \
		-DENABLE_STRICT=NO \
		-DENABLE_QRCODE=NO \
		-DENABLE_LIME_X3DH=NO \
		-DENABLE_FLEXIAPI=NO \
		-DENABLE_DB_STORAGE=NO # needs SOCI

BUILD_DEPENDS = textproc/py-stache \
		devel/py-six,python3 \
		devel/doxygen>=1.10.0

LIB_DEPENDS =	telephony/linphone/bctoolbox \
		telephony/linphone/mediastreamer2 \
		telephony/linphone/ortp \
		telephony/linphone/belle-sip \
		telephony/linphone/belcard \
		telephony/linphone/belr \
		textproc/xerces-c

WANTLIB += ${COMPILER_LIBCXX} bctoolbox belcard belle-sip belr
WANTLIB += c iconv m mediastreamer2 ortp sqlite3 xerces-c
WANTLIB += xml2 z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/liblinphone
	mv ${WRKBUILD}/coreapi/help/doc/doxygen/c ${PREFIX}/share/doc/liblinphone
	mv ${WRKBUILD}/wrappers/cpp/cpp ${PREFIX}/share/doc/liblinphone

.include <bsd.port.mk>
