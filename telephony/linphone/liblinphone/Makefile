# $OpenBSD: Makefile,v 1.1.1.1 2021/07/10 12:03:20 landry Exp $

COMMENT =	SIP library supporting voice/video calls and text messaging

V =		4.5.19
MODULE =	liblinphone

SHARED_LIBS +=	linphone	0.0 \
		linphone++	0.0 # 10

CONFIGURE_ARGS =-DENABLE_STATIC=NO \
		-DENABLE_UNIT_TESTS=NO \
		-DENABLE_STRICT=NO \
		-DENABLE_LIME_X3DH=NO \
		-DENABLE_DB_STORAGE=NO # needs SOCI

BUILD_DEPENDS = textproc/py-stache \
		devel/py-six \
		devel/doxygen

LIB_DEPENDS =	telephony/linphone/bctoolbox \
		telephony/linphone/mediastreamer2 \
		telephony/linphone/ortp \
		telephony/linphone/belle-sip \
		telephony/linphone/belcard \
		telephony/linphone/belr \
		textproc/xerces-c

WANTLIB += ${COMPILER_LIBCXX} bctoolbox belcard bellesip belr
WANTLIB += bzrtp c iconv m mediastreamer ortp sqlite3 xerces-c
WANTLIB += xml2 z

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

post-install:
	mv ${PREFIX}/share/doc/liblinphone-4.5.0 ${PREFIX}/share/doc/liblinphone

.include <bsd.port.mk>
