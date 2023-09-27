COMMENT=	SLang-based newsreader

PKGNAME=	slrn-1.0.3
DISTNAME=	${PKGNAME}a
REVISION=	0
WRKDIST=	${WRKDIR}/${PKGNAME}

CATEGORIES=	news

EXTRACT_SUFX= .tar.bz2

HOMEPAGE=	https://slrn.info/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto iconv intl m ssl slang

SITES=		https://jedsoft.org/releases/slrn/ \
		https://jedsoft.org/releases/slrn/old/

NO_TEST=	Yes
BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext,-runtime \
		devel/libslang

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-inews \
		--with-ssl \
		--with-slrnpull \
		--enable-spool
LDFLAGS=	-L${LOCALBASE}/lib -lm
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS}" CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+= --with-slang=${LOCALBASE}

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

.include <bsd.port.mk>
