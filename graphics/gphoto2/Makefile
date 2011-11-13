# $OpenBSD: Makefile,v 1.21 2011/11/13 17:15:59 ajacoutot Exp $

COMMENT =	digital camera command-line interface
CATEGORIES =	graphics

MAINTAINER =	Marc Espie <espie@openbsd.org>

VERSION =	2.4.11
DISTNAME =	gphoto2-${VERSION}
PKGNAME =	gphoto-${VERSION}

HOMEPAGE =	http://gphoto.sourceforge.net/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# GPLv2
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

WANTLIB += c exif gphoto2 gphoto2_port jpeg ltdl m ncurses popt
WANTLIB += pthread readline usb usb-1.0

USE_LIBTOOL =		Yes
USE_GROFF =		Yes

MAKE_FLAGS =		INTLLIBS='$$(LTLIBINTL)'

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--without-aalib \
			--without-cdk
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			POPT_CFLAGS="-I${LOCALBASE}/include" \
			POPT_LIBS="-I${LOCALBASE}/lib -lpopt"

MODULES =	devel/gettext
LIB_DEPENDS =	graphics/libgphoto2>=2.4.11 \
		devel/popt

pre-configure:
	perl -pi -e 's,-lpthread,-pthread,g' ${WRKSRC}/configure

.include <bsd.port.mk>
