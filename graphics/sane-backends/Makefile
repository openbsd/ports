# $OpenBSD: Makefile,v 1.5 2005/12/26 14:09:47 steven Exp $

COMMENT=	"API for accessing scanners, backends"

DISTNAME=	sane-backends-1.0.16
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=		sane	1.16
MODGNU_SHARED_LIBS=	sane	''
CATEGORIES=	graphics

HOMEPAGE=	http://www.sane-project.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.sane-project.org/pub/sane/${DISTNAME}/ \
		http://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://ftp.sane-project.org/pub/sane/old-versions/${DISTNAME}/
WANTLIB=	c m

LIB_DEPENDS=	usb.7::devel/libusb \
		jpeg.62::graphics/jpeg

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--sbindir=${LOCALBASE}/libexec \
		--with-docdir=${LOCALBASE}/share/doc/sane-backends \
		--localstatedir=/var/spool \
		--with-group=553

FLAVORS=	gphoto2
FLAVOR?=

.if ${FLAVOR:L} == "gphoto2"
LIB_DEPENDS+=	gphoto2,gphoto2_port::graphics/libgphoto2
CONFIGURE_ARGS+=--with-gphoto2
WANTLIB+=	exif
MODULES=	devel/gettext
.else
CONFIGURE_ARGS+=--without-gphoto2
.endif

NO_REGRESS=	Yes

MKFILES=	lib/Makefile.in sanei/Makefile.in backend/Makefile.in \
		frontend/Makefile.in tools/Makefile.in japi/Makefile.in

pre-build:
.for i in ${MKFILES}
	perl -pi -e "s,\.\.\/libtool,${LIBTOOL},g" ${WRKSRC}/${i}
.endfor

.include <bsd.port.mk>
