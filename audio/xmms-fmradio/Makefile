# $OpenBSD: Makefile,v 1.12 2010/11/18 12:03:28 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	FM radio input plug-in for XMMS

DISTNAME=	xmms-FMRadio-1.5
PKGNAME=	${DISTNAME:L}
REVISION=	2
CATEGORIES=	audio x11

HOMEPAGE=	http://silicone.free.fr/xmms-FMRadio/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xi gdk glib gmodule gtk m xmms>=2

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

MODULES +=	devel/gettext

LIB_DEPENDS=	audio/xmms

MAKE_ENV=	CC="${CC}"

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-fmradio
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-fmradio/

.include <bsd.port.mk>
