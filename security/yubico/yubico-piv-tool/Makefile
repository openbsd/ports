COMMENT=	Yubico Personal Identity Verification (PIV) Tool

HOMEPAGE=	https://developers.yubico.com/yubico-piv-tool/

YK_PROJECT=	yubico-piv-tool
DISTNAME=	yubico-piv-tool-2.3.1

SHARED_LIBS +=  ykcs11                    1.0 # 5.4
SHARED_LIBS +=  ykpiv                     1.0 # 5.4

CATEGORIES=	sysutils

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB +=	c pthread crypto pcsclite

BUILD_DEPENDS=	devel/check \
		devel/gengetopt \
		devel/help2man
LIB_DEPENDS=	security/pcsc-lite

MODULES=	devel/cmake
#CONFIGURE_ARGS=	--disable-doxygen-doc

post-patch:
	${SUBST_CMD} ${WRKSRC}/tool/tests/basic.sh

.include <bsd.port.mk>
