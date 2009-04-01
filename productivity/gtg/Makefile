# $OpenBSD: Makefile,v 1.2 2009/04/01 11:33:21 jasper Exp $

COMMENT=		GTD organizer for GNOME

GNOME_PROJECT=		gtg
GNOME_VERSION=		0.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		productivity

HOMEPAGE=		http://gtg.fritalk.com/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://launchpad.net/gtg/trunk/${VERSION}/+download/
EXTRACT_SUFX=		.tar.gz

MODULES=		lang/python \
			x11/gnome

RUN_DEPENDS=		::devel/py-configobj \
			::devel/py-xdg \
			::x11/gnome/py-gnome \
			::x11/py-gtk2

DESKTOP_FILES=		Yes

NO_REGRESS=		Yes
USE_X11=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gtg \
			${WRKSRC}/GTG/__init__.py \
			${WRKSRC}/GTG/gtg.py

.include <bsd.port.mk>
