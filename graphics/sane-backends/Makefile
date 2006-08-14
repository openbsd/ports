# $OpenBSD: Makefile,v 1.12 2006/08/14 12:55:30 kurt Exp $

COMMENT=	"API for accessing scanners, backends"

DISTNAME=	sane-backends-1.0.18
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	sane 1.17
CATEGORIES=	graphics

HOMEPAGE=	http://www.sane-project.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.sane-project.org/pub/sane/${DISTNAME}/ \
		ftp://ftp.ibiblio.org/pub/Linux/apps/graphics/capture/ \
		http://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://ftp.sane-project.org/pub/sane/old-versions/${DISTNAME}/
WANTLIB=	c m pthread exif z

LIB_DEPENDS=	usb.>=7::devel/libusb \
		jpeg.>=62::graphics/jpeg \
		tiff.>=38::graphics/tiff \
		gphoto2.>=2,gphoto2_port.>=5::graphics/libgphoto2

MODULES=	devel/gettext
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_MAKEDEPEND="no"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--sbindir=${LOCALBASE}/libexec \
		--with-docdir=${LOCALBASE}/share/doc/sane-backends \
		--localstatedir=/var/spool \
		--with-gphoto2 \
		--with-group=553

NO_REGRESS=	Yes

.include <bsd.port.mk>
