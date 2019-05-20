# $OpenBSD: Makefile,v 1.17 2019/05/20 22:15:20 naddy Exp $

COMMENT=		noninteractive ftp client
DISTNAME=		weex-2.6.1.5
REVISION=		4
CATEGORIES=		net

HOMEPAGE=		http://weex.sourceforge.net

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c iconv intl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=weex/}

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/gettext,-runtime

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.13
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/weex
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/weex
	${INSTALL_DATA} ${WRKSRC}/doc/sample.weexrc \
			${PREFIX}/share/examples/weex

.include <bsd.port.mk>
