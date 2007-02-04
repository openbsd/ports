# $OpenBSD: Makefile,v 1.15 2007/02/04 10:37:58 wilfried Exp $

COMMENT=		'wm-dockapp; weather monitor'

DISTNAME=		wmweather-2.4.3
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.godisch.de/debian/wmweather/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		curl.::net/curl

USE_GMAKE=		Yes
USE_X11=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-xmessage
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WRKSRC=			${WRKDIST}/src

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/shared/examples/wmweather
	mv ${WRKINST}/${SYSCONFDIR}/wmweather.conf ${PREFIX}/shared/examples/wmweather/

.include <bsd.port.mk>
