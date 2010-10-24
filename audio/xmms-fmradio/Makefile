# $OpenBSD: Makefile,v 1.10 2010/10/24 21:00:30 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	FM radio input plug-in for XMMS

DISTNAME=	xmms-FMRadio-1.5
PKGNAME=	${DISTNAME:L}
REVISION=	1
CATEGORIES=	audio x11

HOMEPAGE=	http://silicone.free.fr/xmms-FMRadio/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xi gdk glib gmodule gtk iconv intl m xmms.>=2

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	::audio/xmms

MAKE_ENV=	CC="${CC}"

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-fmradio
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-fmradio/

.include <bsd.port.mk>
