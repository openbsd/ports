# $OpenBSD: Makefile,v 1.15 2013/03/11 11:35:55 espie Exp $

COMMENT-main=	SSH and telnet client
COMMENT-gui=	PuTTY GUI clients

DISTNAME=	putty-0.62
PKGNAME-main=	${DISTNAME}
PKGNAME-gui=	${DISTNAME:S/putty/putty-gui/}
REVISION=	1
CATEGORIES=	net security

HOMEPAGE=	http://www.chiark.greenend.org.uk/~sgtatham/putty/
MASTER_SITES=	http://the.earth.li/~sgtatham/putty/latest/ \
		ftp://ftp.chiark.greenend.org.uk/users/sgtatham/putty-latest/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ENV=		CPPFLAGS="-I.././" \
			LDFLAGS="-L${X11BASE}/lib"
AUTOCONF_VERSION=	2.67
AUTOMAKE_VERSION=	1.11
WRKSRC=			${WRKDIST}/unix

MULTI_PACKAGES= 	-main -gui

MODULES=		devel/gettext

WANTLIB-main=		X11 c
WANTLIB-gui=		GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
			Xinerama Xrandr Xrender atk-1.0 c cairo expat \
			fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
			glib-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pixman-1 png \
			pthread-stubs xcb xcb-render xcb-shm z \
			${MODGETTEXT_WANTLIB}

LIB_DEPENDS-main=	# empty
LIB_DEPENDS-gui=	x11/gtk+2

AUTO_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

NO_TEST=		Yes

post-patch:
	@echo "Running aclocal-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC} && ${SETENV} ${AUTO_ENV} aclocal

pre-configure:
	cd ${WRKDIST} && ./mkfiles.pl

.include <bsd.port.mk>
