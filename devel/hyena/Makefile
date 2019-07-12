# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:35 sthen Exp $

COMMENT=	GUI and non-GUI C-sharp code library

# NOTE: whenever GNOME_VERSION is changed print/pdfmod needs to be bumped
# as it copies the dll from this package and bundle them in its own.
GNOME_PROJECT=	hyena
GNOME_VERSION=	0.5
EXTRACT_SUFX=	.tar.bz2

REVISION=	1

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/mono \
		x11/gnome

RUN_DEPENDS=	x11/mono-gtk2
BUILD_DEPENDS=	x11/mono-gtk2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-release

DLLMAP_FILES=	Hyena/Hyena.dll.config \
		Hyena.Gui/Hyena.Gui.dll.config

### Mono 3
AUTOCONF_VERSION=	2.65
AUTOMAKE_VERSION=	1.14
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

post-patch:
	perl -pi -e 's/MONO_2_0/MONO_4_0/' ${WRKSRC}/configure.ac
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal -I build/m4/shamrock
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake
###

pre-configure:
	perl -pi -e 's,/usr/bin/env\ bash,/bin/sh,g' \
		${WRKSRC}/build/dll-map-makefile-verifier \
		${WRKSRC}/build/private-icon-theme-installer

.include <bsd.port.mk>
