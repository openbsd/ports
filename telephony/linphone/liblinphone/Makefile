COMMENT =	SIP library supporting voice/video calls and text messaging

MODULE =	liblinphone

REVISION =	0

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

# XXX breaks with libxml >=2.14
# /usr/ports/pobj/liblinphone-5.3.89/liblinphone-5.3.89/coreapi/lpc2xml.c:50:9:
#   error: type 'union (unnamed union at /usr/local/include/libxml2/libxml/encoding.h:170:5)' does not provide a call operator
#   ret = handler->input(out, &out_size, (const xmlChar *)in, &temp);
CONFIGURE_ARGS +=	-DENABLE_XML2=NO \
			-DENABLE_VCARD=NO

BUILD_DEPENDS = textproc/py-stache \
		devel/py-six \
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
WANTLIB += z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/liblinphone
	mv ${WRKBUILD}/coreapi/help/doc/doxygen/c ${PREFIX}/share/doc/liblinphone
	mv ${WRKBUILD}/wrappers/cpp/cpp ${PREFIX}/share/doc/liblinphone

.include <bsd.port.mk>
