# $OpenBSD: Makefile,v 1.7 2013/08/09 17:39:44 ajacoutot Exp $

COMMENT=	ICC compatible color management system

V=		1.1.0-20100201
DISTNAME=	hargyllcms-${V}
PKGNAME=	argyll-${V:S/-/./}
REVISION=	3

CATEGORIES=	graphics sysutils

HOMEPAGE=	http://www.argyllcms.com/

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xinerama Xrandr Xrender Xss Xxf86vm c jpeg
WANTLIB += m pthread tiff usb xcb z usb-1.0

# Fedora:
# Switch to using the hargyllcms friendly fork sources as upstream
# refuses to switch away from jam, or stop bundling other projects
# (yajl) and libraries (libusb, libtiff).
MASTER_SITES=	http://pkgs.fedoraproject.org/repo/pkgs/argyllcms/${DISTNAME}${EXTRACT_SUFX}/59cdfbefa1c905967b0848634c2fb509/
#MASTER_SITES=	https://github.com/hughsie/hargyllcms

LIB_DEPENDS=	devel/libusb-compat \
		graphics/tiff


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# XXX used at the end of the build
BUILD_DEPENDS +=${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
AUTOCONF_VERSION=2.65
AUTOMAKE_VERSION=1.11
MAKE_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

BUILD_DEPENDS+=	textproc/gsed

pre-configure:
	perl -pi -e 's,sed -i,gsed -i,' ${WRKSRC}/legal.sh
	cd ${WRKSRC} && /bin/sh ./legal.sh
	perl -pi -e 's,/var/lib,/var/db,g;' \
		-e 's,/lib/firmware,/etc/firmware,g' \
		${WRKSRC}/spectro/{spyd2setup.h,spyd2en.c}
# remove udev rules
post-install:
	rm -rf ${WRKINST}/lib

.include <bsd.port.mk>
