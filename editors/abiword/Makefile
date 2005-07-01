# $OpenBSD: Makefile,v 1.41 2005/07/01 17:46:02 aanriot Exp $

COMMENT=	"open-source, cross-platform WYSIWYG word processor"

VERSION=	2.2.8
DISTNAME=	abiword-${VERSION}
CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

LIB_DEPENDS=	fribidi::devel/fribidi \
		gthread-2.0.0.0::devel/glib2 \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		glade-2.0.0.0::devel/libglade2 \
		xml2.6::textproc/libxml \
		popt::devel/popt

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xft Xrender atk-1.0.0.0 c fontconfig freetype \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 m pango-1.0.0.0 \
		pangox-1.0.0.0 pangoxft-1.0.0.0 png pthread stdc++ z

MASTER_SITES=   ${HOMEPAGE}/downloads/abiword/${VERSION}/source/

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-gucharmap --disable-enchant --without-pspell
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	gnome
FLAVOR?=

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=	gnomeprintui-2-2::x11/gnome/libgnomeprintui
WANTLIB+=	ORBit-2.0.0 art_lgpl_2.0.0 bonobo-2.0.0	\
		bonobo-activation bonoboui-2.0.0 gconf-2.0.0 \
		gnome-2.0.0 gnomecanvas-2.0.0 gnomeprint-2-2.0.0 \
		gnomeui-2.0.0 gnomevfs-2.0.0
CONFIGURE_ARGS+= --enable-gnome
.endif

MAKE_FILE=	GNUmakefile

WRKDIST=	${WRKDIR}/abiword-${VERSION}
WRKSRC=		${WRKDIST}/abi

pre-configure:
	@perl -pi -e "s|libpng12|libpng|g" ${WRKSRC}/configure

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/abiword/Manual
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/abiword/Tutorials

	${INSTALL_MAN} ${WRKDIST}/abiword-docs/man/abiword.1 \
		${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKDIST}/abiword-docs/Manual/en/Abiword_Manual.abw \
		${PREFIX}/share/doc/abiword/Manual
	cd ${WRKDIST}/abiword-docs/Tutorials/ && $(TAR) cf - jmp klw | \
		$(TAR) xf - -C ${PREFIX}/share/doc/abiword/Tutorials/

.include <bsd.port.mk>
