COMMENT =	SIP library supporting voice/video calls and text messaging

MODULE =	liblinphone

SHARED_LIBS +=	linphone	0.0 \
		linphone++	0.0 # 10

CONFIGURE_ARGS =-DENABLE_STATIC=NO \
		-DENABLE_UNIT_TESTS=NO \
		-DENABLE_STRICT=NO \
		-DENABLE_LIME_X3DH=NO \
		-DENABLE_FLEXIAPI=NO \
		-DENABLE_DB_STORAGE=NO # needs SOCI

BUILD_DEPENDS = textproc/py-stache \
		devel/py-six,python3 \
		devel/doxygen

LIB_DEPENDS =	telephony/linphone/bctoolbox>=${V} \
		telephony/linphone/mediastreamer2>=${V} \
		telephony/linphone/ortp \
		telephony/linphone/belle-sip>=${V} \
		telephony/linphone/belcard \
		telephony/linphone/belr \
		textproc/xerces-c

WANTLIB += ${COMPILER_LIBCXX} bctoolbox belcard bellesip belr
WANTLIB += bzrtp c iconv m mediastreamer ortp sqlite3 xerces-c
WANTLIB += xml2 z

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

post-install:
	mv ${PREFIX}/share/doc/liblinphone-5.0.0 ${PREFIX}/share/doc/liblinphone

.include <bsd.port.mk>
