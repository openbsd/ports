# $OpenBSD: Makefile,v 1.26 2014/10/03 12:47:41 dcoppa Exp $

COMMENT=		wm-dockapp; weather monitor

DISTNAME=		wmweather-2.4.5
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://people.debian.org/~godisch/wmweather/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c curl

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		net/curl

USE_GMAKE=		Yes
USE_GROFF =		Yes
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
