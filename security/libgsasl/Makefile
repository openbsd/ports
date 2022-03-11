COMMENT=	GNU implementation of the SASL framework

REVISION=	0
DISTNAME=	libgsasl-1.8.1
CATEGORIES=	security
HOMEPAGE=	https://www.gnu.org/software/gsasl/
MASTER_SITES=	${MASTER_SITE_GNU:=gsasl/}

SHARED_LIBS +=  gsasl 0.0 # 14.6

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
