COMMENT-main=	toolkit for OATH/HOTP and TOTP
COMMENT-pskc=	toolkit for RFC 6030 Portable Symmetric Key Container

V=		2.6.7
DISTNAME=	oath-toolkit-$V
PKGNAME-main=	oath-toolkit-$V
PKGNAME-pskc=	oath-toolkit-pskc-$V

SHARED_LIBS +=  oath                      0.2 # 1.3
SHARED_LIBS +=  pskc                      0.1 # 0.1

CATEGORIES=	security devel

HOMEPAGE=	http://www.nongnu.org/oath-toolkit/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=oath-toolkit/}

# libraries: LGPLv2.1+, tools: GPLv3+
PERMIT_PACKAGE=	 Yes

MULTI_PACKAGES=	-main -pskc

WANTLIB-main=	c
WANTLIB-pskc=	c iconv ltdl lzma m pthread xml2 xmlsec1 xslt z

LIB_DEPENDS-pskc= security/xmlsec \
		converters/libiconv

CONFIGURE_STYLE= gnu
SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_ARGS=	--enable-pam=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/xml

TEST_FLAGS=	HOME=/tmp

.include <bsd.port.mk>
