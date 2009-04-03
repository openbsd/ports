# $OpenBSD: Makefile,v 1.24 2009/04/03 21:30:50 sturm Exp $

COMMENT=	e-donkey client
CATEGORIES=	net

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m z pthread \
			freetype png jpeg charset stdc++ fontconfig
CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_DIR=		${WRKSRC}/config
AUTOCONF_VERSION=	2.61
#CONFIGURE_ARGS+=	--enable-ocamlver=3.07
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

HOMEPAGE=	http://mldonkey.sourceforge.net/Main_Page

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mldonkey/}
DISTNAME=	mldonkey-2.9.1
PKGNAME=	${DISTNAME}p2
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_ARGS+=--enable-gui=newgui1
CONFIGURE_ENV+=	CPPFLAGS='-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include'
CONFIGURE_ENV+=	LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'

USE_X11=	Yes
USE_GMAKE=	Yes
MODULES=	lang/ocaml
BUILD_DEPENDS=	::x11/lablgtk
LIB_DEPENDS=	gdk.>=1,gtk.>=1::x11/gtk+ \
		bz2::archivers/bzip2 \
		gd::graphics/gd \
		magic::devel/libmagic

FAKE_FLAGS=	MODOCAML_NATIVE=${MODOCAML_NATIVE}
NO_REGRESS=	Yes

post-install:
	mkdir -p ${PREFIX}/share/mldonkey
	cp -R ${WRKDIST}/distrib ${PREFIX}/share/mldonkey
	@${strip_binaries}

.include <bsd.port.mk>

.if ${MODOCAML_NATIVE:L} == "yes"
strip_binaries=cd ${PREFIX}/bin && strip mlnet mlgui mlnet+gui
.else
strip_binaries=:
.endif
