# $OpenBSD: Makefile,v 1.19 2002/12/29 20:31:41 fgsch Exp $

COMMENT=	"graphics file viewer for X11"

VERSION=	4.1
REVISION=	10	# Debian

DISTNAME=	xloadimage.${VERSION}
PKGNAME=	xloadimage-${VERSION}.${REVISION}
CATEGORIES=	x11 graphics

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.x.org/R5contrib/ \
		ftp://ftp.freesoftware.com/pub/X11/R5contrib/
MASTER_SITES0=	ftp://ftp.debian.org/debian/pool/main/x/xloadimage/ \
		ftp://ftp.de.debian.org/debian/pool/main/x/xloadimage/

PATCHFILES=	xloadimage_${VERSION}-${REVISION}.diff.gz:0
PATCH_DIST_STRIP= -p1

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png \
		tiff.35::graphics/tiff

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
NO_REGRESS=	Yes

post-patch:
	@chmod a+rx ${WRKSRC}/configure

do-install:
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xloadimage
	${INSTALL_DATA} ${WRKSRC}/xloadimagerc \
	    ${PREFIX}/share/examples/xloadimage/xloadimagerc

.include <bsd.port.mk>
