# $OpenBSD: Makefile,v 1.3 2011/04/21 11:37:56 jasper Exp $

COMMENT=	GUI and non-GUI C-sharp code library

# NOTE: whenever GNOME_VERSION is changed print/pdfmod needs to be bumped
# as it copies the dll from this package and bundle them in its own.
GNOME_PROJECT=	hyena
GNOME_VERSION=	0.5

CATEGORIES=	devel

HOMEPAGE=	http://live.gnome.org/Hyena

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/mono \
		x11/gnome

RUN_DEPENDS=	x11/mono-gtk2
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-release

DLLMAP_FILES=	Hyena/Hyena.dll.config \
		Hyena.Gui/Hyena.Gui.dll.config

pre-configure:
	@cd ${WRKSRC}/build && \
		perl -pi -e 's,/usr/bin/env\ bash,/bin/ksh,g' \
			dll-map-makefile-verifier \
			private-icon-theme-installer

.include <bsd.port.mk>
