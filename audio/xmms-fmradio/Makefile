# $OpenBSD: Makefile,v 1.15 2013/03/10 22:55:06 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	FM radio input plug-in for XMMS

DISTNAME=	xmms-FMRadio-1.5
PKGNAME=	${DISTNAME:L}
REVISION=	3
CATEGORIES=	audio x11

HOMEPAGE=	http://silicone.free.fr/xmms-FMRadio/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xi gdk glib gmodule gtk m xmms>=2

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

MODULES +=	devel/gettext

LIB_DEPENDS=	audio/xmms

MAKE_ENV=	CC="${CC}"

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-fmradio
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-fmradio/

.include <bsd.port.mk>
