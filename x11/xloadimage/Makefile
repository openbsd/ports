# $OpenBSD: Makefile,v 1.9 2000/08/06 11:51:34 brad Exp $

DISTNAME=	xloadimage.4.1
PKGNAME=	xloadimage-4.1
CATEGORIES=	x11 graphics
NEED_VERSION=	1.319
MASTER_SITES=	ftp://ftp.x.org/R5contrib/ \
		ftp://ftp.freesoftware.com/pub/X11/R5contrib/
MASTER_SITES0=	ftp://ftp.debian.org/debian/dists/woody/main/source/graphics/ \
		ftp://ftp.de.debian.org/debian/dists/woody/main/source/graphics/

PATCHFILES=	xloadimage_4.1-5.diff.gz:0
PATCH_DIST_STRIP= -p1

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff

MAINTAINER=	naddy@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib'

post-patch:
	@chmod a+rx ${WRKSRC}/configure

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xloadimage
	${INSTALL_PROGRAM} ${WRKBUILD}/xloadimage ${PREFIX}/bin
	@cd ${PREFIX}/bin && \
	   ln -sf xloadimage xsetbg && \
	   ln -sf xloadimage xview
	${INSTALL_PROGRAM} ${WRKBUILD}/uufilter ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xloadimage.man ${PREFIX}/man/man1/xloadimage.1
	@cd ${PREFIX}/man/man1 && \
	   ln -sf xloadimage.1 xsetbg.1 && \
	   ln -sf xloadimage.1 xview.1
	${INSTALL_MAN} ${WRKSRC}/uufilter.man ${PREFIX}/man/man1/uufilter.1
	${INSTALL_DATA} ${WRKSRC}/xloadimagerc \
	 ${PREFIX}/share/examples/xloadimagerc-sample

.include <bsd.port.mk>
