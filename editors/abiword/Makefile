# $OpenBSD: Makefile,v 1.30 2003/08/16 16:32:58 couderc Exp $

COMMENT=	"open-source, cross-platform WYSIWYG word processor"

VERSION=	1.0.6
DISTNAME=	abiword-${VERSION}
CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

AUTOCONF_VERSION=	2.52

BUILD_DEPENDS=	::devel/autoconf/${AUTOCONF_VERSION} \
		::devel/metaauto \
		::devel/automake
LIB_DEPENDS=	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		gtk.1.2,gdk.1.2::x11/gtk+
RUN_DEPENDS=	ispell::textproc/ispell

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=abiword/}

USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libpng=${LOCALBASE}/lib \
			--without-pspell \
			--disable-debug
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS=	prefix="${PREFIX}"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

MAKE_FILE=	GNUmakefile

WRKSRC=		${WRKDIST}/abi

FLAVORS=	gnome
FLAVOR?=

.if ${FLAVOR:L:Mgnome}
CONFIGURE_ARGS+=	--enable-gnome
LIB_DEPENDS+=		bonobo.2,bonobo-print.2,bonobox.2::x11/gnome/bonobo \
			gal.19::devel/gal \
			glade.5,glade-gnome.5::devel/libglade,gnome \
			gnomevfs::x11/gnome/vfs
.else
CONFIGURE_ARGS+=	--disable-gnome --with-libxml2
LIB_DEPENDS+=		xml2::textproc/libxml
.endif

pre-configure:
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} sh autogen.sh

.if ${FLAVOR:L:Mgnome}
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnome/apps/Applications
	${INSTALL_DATA} ${WRKSRC}/src/pkg/linux/rpm/data/abiword.desktop ${PREFIX}/share/gnome/apps/Applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${PREFIX}/share/AbiSuite/icons/abiword_48.png ${PREFIX}/share/pixmaps
.endif

.include <bsd.port.mk>
