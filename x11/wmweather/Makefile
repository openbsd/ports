# $OpenBSD: Makefile,v 1.20 2010/07/30 08:03:00 ajacoutot Exp $

COMMENT=		wm-dockapp; weather monitor

DISTNAME=		wmweather-2.4.3
REVISION=		2
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://people.debian.org/~godisch/wmweather/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xpm c curl

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		::net/curl

USE_GMAKE=		Yes
USE_X11=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-xmessage
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WRKSRC=			${WRKDIST}/src

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmweather
	mv ${WRKINST}/${SYSCONFDIR}/wmweather.conf ${PREFIX}/share/examples/wmweather/

.include <bsd.port.mk>
