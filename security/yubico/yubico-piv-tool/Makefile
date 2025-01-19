COMMENT=	Yubico Personal Identity Verification (PIV) Tool

HOMEPAGE=	https://developers.yubico.com/yubico-piv-tool/

YK_PROJECT=	yubico-piv-tool
DISTNAME=	yubico-piv-tool-2.7.1

SHARED_LIBS +=  ykcs11                    1.1
SHARED_LIBS +=  ykpiv                     3.0

CATEGORIES=	sysutils

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB +=	c pthread crypto pcsclite z

BUILD_DEPENDS=	devel/check \
		devel/gengetopt \
		devel/help2man
LIB_DEPENDS=	security/pcsc-lite

MODULES=	devel/cmake
#CONFIGURE_ARGS=	--disable-doxygen-doc

TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH}

post-patch:
	${SUBST_CMD} ${WRKSRC}/tool/tests/basic.sh

.include <bsd.port.mk>
