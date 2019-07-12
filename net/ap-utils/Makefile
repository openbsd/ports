# $OpenBSD: Makefile,v 1.19 2019/07/12 20:47:59 sthen Exp $

COMMENT=	Atmel/NWN wireless access point configuration tools

DISTNAME=	ap-utils-1.5
REVISION=	5
CATEGORIES=	net
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://ap-utils.polesye.net/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl curses menu

MASTER_SITES=	ftp://linux.zhitomir.net/ap-utils/

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=	--without-included-gettext \
			--with-libiconv-prefix=${LOCALBASE} \
			--with-libintl-prefix=${LOCALBASE}
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/systrace/
	${INSTALL_DATA} ${FILESDIR}/bin_ap_config ${PREFIX}/share/examples/systrace/

.include <bsd.port.mk>
