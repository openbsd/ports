# $OpenBSD: Makefile,v 1.48 2005/11/14 16:02:24 wilfried Exp $

COMMENT=	"free cross-platform WYSIWYG word processor"

VERSION=	2.4.1
MAJORVER=	${VERSION:C/..$//}
DISTNAME=	abiword-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MODULES=	devel/gettext

BUILD_DEPENDS=	::devel/pkgconfig

LIB_DEPENDS=	fribidi::devel/fribidi \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		gnomeprintui-2-2::x11/gnome/libgnomeprintui

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xft Xrender art_lgpl_2.0.0 atk-1.0.0.0 c cairo \
		fontconfig freetype glade-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
		gnomecanvas-2.0.0 gnomeprint-2-2.0.0 gobject-2.0.0.0 \
		gthread-2.0.0.0 m pango-1.0.0.0 pangocairo-1.0.0.0 \
		pangoft2-1.0.0.0 pangoxft-1.0.0.0 png popt.0 pthread stdc++ \
		xml2.9 z

MASTER_SITES=   ${HOMEPAGE}/downloads/abiword/${VERSION}/source/

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-gucharmap --disable-enchant --without-pspell
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -DMAXSTRINGCHARS=512" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	gnome
FLAVOR?=

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=	gnomeui-2::x11/gnome/libgnomeui \
		ORBit-2::devel/ORBit2
WANTLIB+=	ORBit-2.0.0 bonobo-2.0.0 bonobo-activation bonoboui-2.0.0 \
		gconf-2.0.0 gnome-2.0.0 gnomeui-2.0.0 gnomevfs-2.0.0 
CONFIGURE_ARGS+= --enable-gnome
.endif

MAKE_FILE=	GNUmakefile

WRKDIST=	${WRKDIR}/abiword-${VERSION}
WRKSRC=		${WRKDIST}/abi

SUBST_VARS=	MAJORVER

pre-configure:
	@perl -pi -e "s|libpng12|libpng|g" ${WRKSRC}/configure

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/abiword/Manual
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/abiword/Tutorials
	${INSTALL_MAN} ${WRKDIST}/abiword-docs/man/abiword.1 \
	    ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKDIST}/abiword-docs/Manual/en/Abiword_Manual.abw \
	    ${PREFIX}/share/doc/abiword/Manual
	cd ${WRKDIST}/abiword-docs/Tutorials && tar cf - jmp klw | \
	    tar xf - -C ${PREFIX}/share/doc/abiword/Tutorials

.include <bsd.port.mk>
