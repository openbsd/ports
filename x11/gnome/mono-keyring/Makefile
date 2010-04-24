# $OpenBSD: Makefile,v 1.2 2010/04/24 09:20:04 jasper Exp $

COMMENT=	.NET language bindings for GNOME keyring

# SVN revision 87622
GNOME_PROJECT=	gnome-keyring-sharp
GNOME_VERSION=	0.0.9
PKGNAME=	mono-gnome-keyring-${VERSION}

CATEGORIES=	x11

HOMEPAGE=	http://mono-project.com/GtkSharp

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://crappydiffs.org/
EXTRACT_SUFX=	.tar.gz

MODULES=	lang/mono \
		x11/gnome

RUN_DEPENDS=	::sysutils/ndesk-dbus \
		::x11/gnome/keyring \
		::x11/mono-gtk2
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

WRKSRC=		${WRKDIR}/gnome-keyring-sharp-1.0.0

.include <bsd.port.mk>
