# $OpenBSD: Makefile,v 1.24 2008/12/14 19:18:02 ajacoutot Exp $

COMMENT=	universal digital camera picture control tool

DISTNAME=	gphoto-0.4.3
PKGNAME=	${DISTNAME}p4
SHARED_LIBS=	gphoto_canon		0.0	\
		gphoto_casio_qv		0.0	\
		gphoto_coolpix600	0.0	\
		gphoto_dimage_v		0.0	\
		gphoto_dir		0.0	\
		gphoto_fuji		0.0	\
		gphoto_kodak_dc2x	0.0	\
		gphoto_kodak_generic	0.0	\
		gphoto_konica_qm100	0.0	\
		gphoto_konica_qmxxx	0.0	\
		gphoto_mustek_mdc800	1.0	\
		gphoto_philips		0.5	\
		gphoto_photopc		0.0	\
		gphoto_ricoh300z	0.0	\
		gphoto_samsung		0.0	\
		gphoto_sony_dscf1	0.0	\
		gphoto_sony_dscf55	0.0

CATEGORIES=	graphics
MASTER_SITES=	http://www.gphoto.org/dist/

HOMEPAGE=	http://www.gphoto.org/

LIB_DEPENDS=	gdk_imlib::graphics/imlib

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext Xi ICE SM c gdk glib gmodule gtk \
		jpeg m png tiff ungif z

MODULES=	devel/gettext

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS='-DDOCDIR="${PREFIX}/share/doc/gphoto"'

post-extract:
	@perl -pi -e 's/\r$$//' ${WRKSRC}/sony/command.c

.include <bsd.port.mk>
