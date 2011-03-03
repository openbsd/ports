# $OpenBSD: Makefile,v 1.40 2011/03/03 14:05:48 ajacoutot Exp $

COMMENT=	API for accessing scanners, backends

DISTNAME=	sane-backends-1.0.22

REVISION=	0

SHARED_LIBS=	sane 2.0 # .1.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.sane-project.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += avahi-client avahi-common c crypto dbus-1 exif gphoto2
WANTLIB += gphoto2_port jpeg ltdl m netsnmp pthread tiff usb z

MASTER_SITES=	ftp://ftp.sane-project.org/pub/sane/${DISTNAME}/ \
		ftp://ftp.sane-project.org/pub/sane/old-versions/${DISTNAME}/

LIB_DEPENDS=	graphics/tiff \
		graphics/libgphoto2 \
		net/avahi \
		net/net-snmp

MODULES=	devel/gettext

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_MAKEDEPEND="no"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--sbindir=${PREFIX}/libexec \
		--with-docdir=${PREFIX}/share/doc/sane-backends \
		--localstatedir=/var/spool \
		--with-gphoto2 \
		--with-group=553 \
		--enable-avahi \
		--disable-latex

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/sane-backends/sane.d

post-install:
	# removing the microtek2 backend which needs a Linux kernel module
	find ${PREFIX} -name \*microtek2\* | xargs rm
	cp -R ${WRKSRC}/tools/openbsd/ \
		${PREFIX}/share/examples/sane-backends/hotplug

.include <bsd.port.mk>
