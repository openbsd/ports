# $OpenBSD: Makefile,v 1.8 2009/08/10 06:29:52 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	FM radio input plug-in for XMMS

DISTNAME=	xmms-FMRadio-1.5
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=	audio x11

HOMEPAGE=	http://silicone.free.fr/xmms-FMRadio/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi gdk glib gmodule gtk iconv intl m \
			pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	xmms.>=2::audio/xmms

MAKE_ENV=	CC="${CC}"

NO_REGRESS=	Yes
USE_X11=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-fmradio
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-fmradio/

.include <bsd.port.mk>
