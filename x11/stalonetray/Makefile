# $OpenBSD: Makefile,v 1.7 2013/03/11 11:46:15 espie Exp $

COMMENT=		stand-alone tray for EWMH-compliant window managers

DISTNAME=		stalonetray-0.8.1
CATEGORIES=		x11 sysutils

HOMEPAGE=		http://stalonetray.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xpm c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=stalonetray/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stalonetray
	${INSTALL_DATA} ${WRKSRC}/stalonetrayrc.sample \
		${PREFIX}/share/examples/stalonetray

.include <bsd.port.mk>
