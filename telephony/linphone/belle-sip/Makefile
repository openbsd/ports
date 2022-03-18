COMMENT =	library implementing SIP (RFC3261) transport

MODULE =	belle-sip

SHARED_LIBS +=  bellesip 0.0 # 1

CONFIGURE_ARGS= -DENABLE_STATIC=NO
CONFIGURE_ARGS += -DENABLE_TESTS=NO
CONFIGURE_ARGS += -DENABLE_STRICT=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox \
		telephony/linphone/belr
WANTLIB += ${COMPILER_LIBCXX} bctoolbox belr m z

#do-test:
#	${WRKBUILD}/tester/belle_sip_tester --verbose --resource-dir ${WRKSRC}/tester/

.include <bsd.port.mk>
