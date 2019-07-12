# $OpenBSD: Makefile,v 1.10 2019/07/12 20:51:22 sthen Exp $

COMMENT=		stand-alone tray for EWMH-compliant window managers

DISTNAME=		stalonetray-0.8.3
REVISION=		0
CATEGORIES=		x11 sysutils

HOMEPAGE=		http://stalonetray.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xpm c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=stalonetray/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stalonetray
	${INSTALL_DATA} ${WRKSRC}/stalonetrayrc.sample \
		${PREFIX}/share/examples/stalonetray

.include <bsd.port.mk>
