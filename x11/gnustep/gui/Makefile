# $OpenBSD: Makefile,v 1.3 2007/07/25 06:10:40 ajacoutot Exp $

COMMENT=	GNUstep gui library

DISTNAME=	gnustep-gui-0.12.0
SHARED_LIBS=	gnustep-gui 0.12	# .0.12
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/

WANTLIB=	c crypto m objc pthread ssl stdc++ tiff z

MASTER_SITES=	ftp://ftp.gnustep.org/pub/gnustep/core/

MODULES=	x11/gnustep
LIB_DEPENDS=	aspell.>=16::textproc/aspell/core \
		audiofile::devel/libaudiofile \
		cups.>=3::print/cups \
		gnustep-base.>=1::x11/gnustep/base \
		jpeg.>=62::graphics/jpeg \
		png.>=5::graphics/png \
		ungif.>=5::graphics/libungif

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -lstdc++ -lm"
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
