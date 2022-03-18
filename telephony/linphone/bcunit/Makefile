COMMENT =	Unit testing framework for C

# take git snapshot because https://gitlab.linphone.org/BC/public/bcunit/-/issues/1
V =		02f7d73e
PKGNAME =	${MODULE}-3.0.2pl1
MODULE =	bcunit
SHARED_LIBS +=	bcunit 0.0 # 1.0.1

CONFIGURE_ARGS= -DENABLE_STATIC=NO \
		-DENABLE_DOC=NO

LIB_DEPENDS =	telephony/linphone/bctoolbox

WANTLIB += ${COMPILER_LIBCXX} bctoolbox m

NO_TESTS =	Yes

.include <bsd.port.mk>
