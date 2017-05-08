# $OpenBSD: Makefile,v 1.16 2017/05/08 21:35:35 schwarze Exp $

COMMENT=	Atmel/NWN wireless access point configuration tools

DISTNAME=	ap-utils-1.5
REVISION=	3
CATEGORIES=	net
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://ap-utils.polesye.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl ncurses menu

MASTER_SITES=	ftp://linux.zhitomir.net/ap-utils/

BUILD_DEPENDS=	devel/gettext-tools

LIB_DEPENDS=	devel/gettext

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
