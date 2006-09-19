# $OpenBSD: Makefile,v 1.1.1.1 2006/09/19 18:10:14 espie Exp $


DISTNAME=		dbus-0.92
COMMENT=		"message system"
CATEGORIES=		x11
HOMEPAGE=		http://dbus.freedesktop.org/
MASTER_SITES=		http://dbus.freedesktop.org/releases/

SEPARATE_BUILD=		simple
PKGNAME=		${DISTNAME}

SHARED_LIBS=		dbus-1		3.0
# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS=-L${LOCALBASE}/lib \
			CPPFLAGS=-I${LOCALBASE}/include
USE_LIBTOOL=		Yes

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/sample/dbus DESTDIR=${WRKINST}

.include <bsd.port.mk>
