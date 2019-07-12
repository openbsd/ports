# $OpenBSD: Makefile,v 1.54 2019/07/12 20:51:29 sthen Exp $

COMMENT=	graphics file viewer for X11

VERSION=	4.1
# Debian
REV=		22

DISTNAME=	xloadimage.${VERSION}
PKGNAME=	xloadimage-${VERSION}.${REV}
REVISION=	0
EPOCH=		0
CATEGORIES=	x11 graphics

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
MASTER_SITES0=	${MASTER_SITE_DEBIAN:=main/x/xloadimage/}

DISTFILES=	${DISTNAME}.tar.gz \
		xloadimage_${VERSION}-${REV}.debian.tar.gz:0

LIB_DEPENDS=	graphics/png \
		graphics/tiff
WANTLIB=	X11 c jpeg m png tiff z

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
NO_TEST=	Yes

PATCH_DIST_STRIP= -p1

# superseded by 30_libtiff5.patch
pre-patch:
	rm ${WRKDIR}/debian/patches/24_libtiff5.patch

do-distpatch:
	@for p in ${WRKDIR}/debian/patches/*.patch; do \
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
