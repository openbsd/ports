COMMENT=	GNU implementation of the SASL framework

DISTNAME=	libgsasl-1.10.0
CATEGORIES=	security
HOMEPAGE=	https://www.gnu.org/software/gsasl/
SITES=		${SITE_GNU:=gsasl/}
REVISION=	0

SHARED_LIBS +=  gsasl 0.1 # 17.0

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB+=	gcrypt gpg-error iconv idn intl
LIB_DEPENDS=	devel/gettext,-runtime \
		devel/libidn \
		security/libgcrypt

# non-shared does not inherit LIB_DEPENDS
LIB_DEPENDS +=	security/libgpg-error

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
