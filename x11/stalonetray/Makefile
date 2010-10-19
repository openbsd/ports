# $OpenBSD: Makefile,v 1.4 2010/10/19 08:13:59 espie Exp $

COMMENT=		stand-alone tray for EWMH-compliant window managers

DISTNAME=		stalonetray-0.7.6
CATEGORIES=		x11 sysutils

HOMEPAGE=		http://stalonetray.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xpm c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=stalonetray/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stalonetray
	${INSTALL_DATA} ${WRKSRC}/stalonetrayrc.sample \
		${PREFIX}/share/examples/stalonetray

.include <bsd.port.mk>
