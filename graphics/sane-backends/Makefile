# $OpenBSD: Makefile,v 1.20 2009/05/11 15:22:07 ajacoutot Exp $

COMMENT=	API for accessing scanners, backends

DISTNAME=	sane-backends-1.0.20
PKGNAME=	${DISTNAME}p0

SHARED_LIBS=	sane 2.0 # .1.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.sane-project.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c exif jpeg ltdl m pthread usb z

MASTER_SITES=	ftp://ftp.sane-project.org/pub/sane/${DISTNAME}/ \
		ftp://ftp.ibiblio.org/pub/Linux/apps/graphics/capture/ \
		http://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://gd.tuwien.ac.at/hci/sane/${DISTNAME}/ \
		ftp://ftp.sane-project.org/pub/sane/old-versions/${DISTNAME}/

LIB_DEPENDS=	tiff.>=38::graphics/tiff \
		gphoto2.>=2,gphoto2_port.>=5::graphics/libgphoto2

MODULES=	devel/gettext

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

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
		--disable-avahi \
		--disable-latex

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/sane-backends/sane.d

post-install:
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/sane-backends/README.OpenBSD
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/sane-backends
	cp -R ${WRKSRC}/tools/openbsd/ \
		${PREFIX}/share/examples/sane-backends/hotplug

.include <bsd.port.mk>
