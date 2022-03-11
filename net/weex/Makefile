COMMENT=		noninteractive FTP/FTPS client for updating web pages

VERSION=		2.8.3
DISTNAME=		weex-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://weex.sourceforge.net

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c crypto iconv intl ssl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=weex/}
DISTFILES=		weex_${VERSION}.tar.gz

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/gettext,-runtime

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	cp ${LOCALBASE}/share/gettext/po/Makevars.template \
	    ${WRKSRC}/po/Makevars

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/weex
	${INSTALL_DATA} ${WRKSRC}/doc/sample.weexrc \
			${PREFIX}/share/examples/weex

.include <bsd.port.mk>
