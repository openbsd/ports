# $OpenBSD: Makefile,v 1.71 2009/08/10 06:31:08 kili Exp $

COMMENT=	free cross-platform WYSIWYG word processor

VERSION=	2.4.6
MAJORVER=	${VERSION:C/..$//}
DISTNAME=	abiword-${VERSION}
PKGNAME=	${DISTNAME}p8
CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MODULES=	devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	fribidi::devel/fribidi \
		popt::devel/popt \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0,gailutil::x11/gtk+2 \
		gnomeprintui-2-2::x11/gnome/libgnomeprintui \
		enchant.>=5::textproc/enchant

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xft Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += c cairo expat fontconfig freetype gio-2.0 glade-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnomecanvas-2 gnomeprint-2-2
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 pixman-1 png pthread stdc++
WANTLIB += xml2 z pthread-stubs xcb

MASTER_SITES=   ${HOMEPAGE}/downloads/abiword/${VERSION}/source/

USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-gucharmap --enable-enchant --without-pspell
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -DMAXSTRINGCHARS=512" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	gnome
FLAVOR?=

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=	gnomeui-2::x11/gnome/libgnomeui \
		ORBit-2::devel/ORBit2
WANTLIB+=	ORBit-2 bonobo-2 bonobo-activation bonoboui-2 \
		gconf-2 gnome-2 gnomeui-2 gnomevfs-2
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
