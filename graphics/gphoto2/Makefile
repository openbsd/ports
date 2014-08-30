# $OpenBSD: Makefile,v 1.29 2014/08/30 09:37:50 ajacoutot Exp $

COMMENT =	digital camera command-line interface
CATEGORIES =	graphics

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>

VERSION =	2.5.5
DISTNAME =	gphoto2-${VERSION}
PKGNAME =	gphoto-${VERSION}

HOMEPAGE =	http://gphoto.sourceforge.net/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c exif gphoto2 gphoto2_port jpeg ltdl m ncurses popt
WANTLIB += pthread readline

USE_GROFF =		Yes

MAKE_FLAGS =		INTLLIBS='$$(LTLIBINTL)'

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--without-cdk
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			POPT_CFLAGS="-I${LOCALBASE}/include" \
			POPT_LIBS="-I${LOCALBASE}/lib -lpopt"

MODULES =	devel/gettext
LIB_DEPENDS =	graphics/libgphoto2 \
		devel/popt

.include <bsd.port.mk>
