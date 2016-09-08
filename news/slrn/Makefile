# $OpenBSD: Makefile,v 1.55 2016/09/08 10:14:35 jasper Exp $

COMMENT=		SLang-based newsreader

DISTNAME=		slrn-1.0.2
REVISION=		1
CATEGORIES=		news

HOMEPAGE=		http://slrn.sourceforge.net/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto iconv intl m ssl slang

MASTER_SITES=		http://jedsoft.org/releases/slrn/ \
			http://jedsoft.org/releases/slrn/old/

MAKE_ARGS+=		LDFLAGS="${LDFLAGS}"

NO_TEST=		Yes
BUILD_DEPENDS=		devel/gettext-tools
LIB_DEPENDS=		devel/gettext \
			devel/libslang

CONFIGURE_STYLE=	gnu
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS}
AUTOCONF_VERSION=	2.69
AUTOCONF_DIR=		${WRKSRC}/autoconf
CONFIGURE_ARGS+=	--disable-inews \
			--with-libiconv-prefix=${LOCALBASE} \
			--with-ssl \
			--with-slrnpull \
			--enable-spool
LDFLAGS=		-L${LOCALBASE}/lib -lm
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}" CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=	--with-slang=${LOCALBASE}

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

# replace bundled m4 files with the newer (working ;) ones from gettext
post-patch:
.for i in gettext lib-ld lib-prefix nls progtest iconv lib-link po
	cp ${LOCALBASE}/share/aclocal/$i.m4 ${WRKSRC}/autoconf/include/
.endfor
	cd ${WRKSRC}/autoconf && \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf && \
	    mv configure ..

.include <bsd.port.mk>
