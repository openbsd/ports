# $OpenBSD: Makefile,v 1.19 2010/11/09 18:22:26 espie Exp $

COMMENT =	digital camera command-line interface
CATEGORIES =	graphics

MAINTAINER =	Marc Espie <espie@openbsd.org>

VERSION =	2.4.7
DISTNAME =	gphoto2-${VERSION}
PKGNAME =	gphoto-${VERSION}

HOMEPAGE =	http://gphoto.sourceforge.net/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# GPLv2
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes


USE_LIBTOOL =		Yes
USE_GROFF =		Yes

MAKE_FLAGS =		INTLLIBS='$$(LTLIBINTL)'

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =		--without-aalib --without-cdk
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			POPT_CFLAGS="-I${LOCALBASE}/include" \
			POPT_LIBS="-I${LOCALBASE}/lib -lpopt"

MODULES =	devel/gettext
LIB_DEPENDS =	::graphics/libgphoto2 \
		::graphics/jpeg \
		::devel/popt

WANTLIB =	c exif m ncurses readline ltdl pthread usb \
		gphoto2 gphoto2_port jpeg popt
.include <bsd.port.mk>
