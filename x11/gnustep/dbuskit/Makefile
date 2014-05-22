# $OpenBSD: Makefile,v 1.6 2014/05/22 09:48:56 sebastia Exp $

COMMENT =	GNUstep dbus interface

CATEGORIES +=   x11/gnustep devel
VERSION =	0.1.1
REVISION =	1
DISTNAME =	dbuskit-${VERSION}
PKGNAME =	gnustep-dbuskit-${VERSION}

SHARED_LIBS =	DBusKit	0.0

HOMEPAGE =	http://www.gnustep.org/
MASTER_SITES =	http://download.gna.org/gnustep/

MODULES +=		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB += 		c dbus-1
BUILD_DEPENDS +=	print/texlive/base \
			textproc/texi2html

# Setting porthome is needed to successfully build the
# documenation
PORTHOME =	${WRKDIST}
CONFIGURE_STYLE = gnu
MAKE_FLAGS +=	DBusKit_INTERFACE_VERSION=${LIBDBusKit_VERSION} nonstrict=yes

.include <bsd.port.mk>
