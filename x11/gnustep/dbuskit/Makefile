# $OpenBSD: Makefile,v 1.19 2020/08/16 20:35:19 sebastia Exp $

BROKEN-alpha =	DKEndpointManager.m:282: error: unrecognizable insn

COMMENT =	GNUstep dbus interface

CATEGORIES +=   x11/gnustep devel
VERSION =	0.1.1
REVISION =	13
DISTNAME =	dbuskit-${VERSION}
PKGNAME =	gnustep-dbuskit-${VERSION}

SHARED_LIBS =	DBusKit	0.0

HOMEPAGE =	http://www.gnustep.org/
MASTER_SITES =	http://download.gna.org/gnustep/

MODULES +=		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB += 		c dbus-1
WANTLIB += ${COMPILER_LIBCXX}
BUILD_DEPENDS +=	print/texlive/base \
			textproc/texi2html \
			print/texinfo

# Setting porthome is needed to successfully build the
# documenation
PORTHOME =	${WRKDIST}
CONFIGURE_STYLE = gnu
MAKE_FLAGS +=	DBusKit_INTERFACE_VERSION=${LIBDBusKit_VERSION} nonstrict=yes

.include <bsd.port.mk>
