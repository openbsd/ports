# $OpenBSD: Makefile,v 1.2 2011/03/07 21:55:21 ajacoutot Exp $

COMMENT=	simple application for modifying PDF documents

GNOME_PROJECT=	pdfmod
GNOME_VERSION=	0.9.1

CATEGORIES=	graphics print

HOMEPAGE=	http://live.gnome.org/PdfMod	

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/mono \
		x11/gnome

BUILD_DEPENDS=	devel/hyena \
		x11/gnome/mono-gnome
RUN_DEPENDS=	print/poppler \
		x11/gnome/mono-gnome

MODGNOME_HELP_FILES= Yes
DESKTOP_FILES=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-release \
		--disable-external-poppler-sharp

DLLMAP_FILES=	lib/poppler-sharp/poppler-sharp/poppler-sharp.dll.config

.include <bsd.port.mk>
