# $OpenBSD: Makefile,v 1.11 2009/04/10 11:59:06 ajacoutot Exp $

COMMENT=	GNUstep gui library

DISTNAME=	gnustep-gui-0.16.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

# needs to follow gnustep-back backend versioning
# cf. gnustep_backend_bundle() in ${WRKSRC}/Source/NSApplication.m
SHARED_LIBS=	gnustep-gui 0.16	# .0.16.0

HOMEPAGE=	http://www.gnustep.org/

WANTLIB=	c m objc pthread stdc++ tiff z gcrypt gnutls \
		gpg-error tasn1

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES=	x11/gnustep \
		devel/gettext

LIB_DEPENDS=	aspell.>=16::textproc/aspell/core \
		audiofile::devel/libaudiofile \
		cups.>=3::print/cups \
		gnustep-base.>=1::x11/gnustep/base \
		jpeg.>=62::graphics/jpeg \
		png.>=5::graphics/png \
		ungif.>=5::graphics/libungif
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::audio/portaudio-svn

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -lstdc++ -lm -pthread"
CONFIGURE_ARGS=	--disable-gsnd --with-x

pre-configure:
	@perl -pi -e 's,^GNUSTEP_GUI_MAJOR_VERSION=.*,GNUSTEP_GUI_MAJOR_VERSION=${LIBgnustep-gui_VERSION:R},g;' \
		-e 's,^GNUSTEP_GUI_MINOR_VERSION=.*,GNUSTEP_GUI_MINOR_VERSION=${LIBgnustep-gui_VERSION:E},g' \
		${WRKSRC}/Version

post-install:
	${INSTALL_MAN} ${WRKSRC}/Documentation/make_services.1 \
		${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/Documentation/gopen.1 \
		${PREFIX}/man/man1

.include <bsd.port.mk>
