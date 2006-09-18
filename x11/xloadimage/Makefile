# $OpenBSD: Makefile,v 1.31 2006/09/18 10:52:10 espie Exp $

COMMENT=	"graphics file viewer for X11"

VERSION=	4.1
REVISION=	16	# Debian

DISTNAME=	xloadimage.${VERSION}
PKGNAME=	xloadimage-${VERSION}.${REVISION}
CATEGORIES=	x11 graphics

FAKE=		lib
MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
MASTER_SITES0=	ftp://ftp.debian.org/debian/pool/main/x/xloadimage/ \
		ftp://ftp.de.debian.org/debian/pool/main/x/xloadimage/

PATCHFILES=	xloadimage_${VERSION}-${REVISION}.diff.gz:0
PATCH_DIST_STRIP= -p1

LIB_DEPENDS=	png.>=2::graphics/png tiff.>=35::graphics/tiff
WANTLIB=	X11 c jpeg m z 

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include/libpng -I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"
NO_REGRESS=	Yes

post-distpatch:
	@for p in ${WRKDIST}/debian/patches/*.dpatch; do \
		${PATCH} ${PATCH_DIST_ARGS} < $$p; \
	done

post-patch:
	@chmod a+rx ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xloadimage ${PREFIX}/bin
	@cd ${PREFIX}/bin && \
	    ln -sf xloadimage xsetbg && \
	    ln -sf xloadimage xview
	${INSTALL_PROGRAM} ${WRKBUILD}/uufilter ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xloadimage.man ${PREFIX}/man/man1/xloadimage.1
	@perl -i -pe 's:%%SYSCONFDIR%%:${SYSCONFDIR}:' \
	    ${PREFIX}/man/man1/xloadimage.1
	@cd ${PREFIX}/man/man1 && \
	    ln -sf xloadimage.1 xsetbg.1 && \
	    ln -sf xloadimage.1 xview.1
	${INSTALL_MAN} ${WRKSRC}/uufilter.man ${PREFIX}/man/man1/uufilter.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xloadimage
	${INSTALL_DATA} ${WRKSRC}/xloadimagerc \
	    ${PREFIX}/share/examples/xloadimage/xloadimagerc

.include <bsd.port.mk>
