# $OpenBSD: Makefile,v 1.13 2013/10/24 15:18:00 ajacoutot Exp $

COMMENT=	Atmel/NWN wireless access point configuration tools

DISTNAME=	ap-utils-1.5
REVISION=	1
CATEGORIES=	net
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://ap-utils.polesye.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ncurses menu

MASTER_SITES=	ftp://linux.zhitomir.net/ap-utils/

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=	--without-included-gettext \
			--with-libiconv-prefix=${LOCALBASE} \
			--with-libintl-prefix=${LOCALBASE}
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/systrace/
	${INSTALL_DATA} files/bin_ap_config ${PREFIX}/share/examples/systrace/

.include <bsd.port.mk>
