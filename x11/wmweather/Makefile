# $OpenBSD: Makefile,v 1.30 2019/07/12 20:51:24 sthen Exp $

COMMENT=		wm-dockapp; weather monitor

DISTNAME=		wmweather-2.4.7
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://people.debian.org/~godisch/wmweather/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm c curl

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		net/curl

USE_GMAKE=		Yes
NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-xmessage
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WRKSRC=			${WRKDIST}/src

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmweather
	mv ${WRKINST}/${SYSCONFDIR}/wmweather.conf ${PREFIX}/share/examples/wmweather/

.include <bsd.port.mk>
