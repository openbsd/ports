# $OpenBSD: Makefile,v 1.62 2020/07/25 17:02:37 sthen Exp $

COMMENT=	SLang-based newsreader

PKGNAME=	slrn-1.0.3
DISTNAME=	${PKGNAME}a
WRKDIST=	${WRKDIR}/${PKGNAME}

CATEGORIES=	news

EXTRACT_SUFX= .tar.bz2

HOMEPAGE=	https://slrn.info/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto iconv intl m ssl slang

MASTER_SITES=	https://jedsoft.org/releases/slrn/ \
		https://jedsoft.org/releases/slrn/old/

MAKE_ARGS+=	LDFLAGS="${LDFLAGS}"

NO_TEST=	Yes
BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext,-runtime \
		devel/libslang

CONFIGURE_STYLE= gnu
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS}
AUTOCONF_VERSION= 2.69
AUTOCONF_DIR=	${WRKSRC}/autoconf
CONFIGURE_ARGS+= --disable-inews \
		--with-libiconv-prefix=${LOCALBASE} \
		--with-ssl \
		--with-slrnpull \
		--enable-spool
LDFLAGS=	-L${LOCALBASE}/lib -lm
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS}" CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+= --with-slang=${LOCALBASE}

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

# replace bundled m4 files with the newer (working ;) ones from gettext
do-gen:
.for i in gettext lib-ld lib-prefix host-cpu-c-abi nls progtest iconv \
    lib-link po
	cp ${LOCALBASE}/share/aclocal/$i.m4 ${WRKSRC}/autoconf/include/
.endfor
	cd ${WRKSRC}/autoconf && \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf && \
	    mv configure ..

.include <bsd.port.mk>
