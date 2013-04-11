# $OpenBSD: Makefile,v 1.32 2013/04/11 20:26:10 brad Exp $

COMMENT=	create, alter and inspect Matroska files

DISTNAME=	mkvtoolnix-4.0.0
REVISION=	3
CATEGORIES=	multimedia x11
MASTER_SITES=	${HOMEPAGE}/sources/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE =	http://www.bunkus.org/videotools/mkvtoolnix/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	FLAC boost_filesystem-mt boost_regex-mt boost_system-mt \
		bz2 c ebml expat lzo2 m magic matroska ogg pthread \
		stdc++ vorbis z

MODULES=	devel/gettext

LIB_DEPENDS=	archivers/bzip2 \
		archivers/lzo2 \
		audio/flac \
		audio/libvorbis \
		devel/boost \
		devel/libmagic \
		multimedia/libmatroska

MAKE_FLAGS+=	V=1

USE_GROFF=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-boost-filesystem=boost_filesystem-mt \
		--with-boost-libdir=${LOCALBASE}/lib \
		--with-boost-regex=boost_regex-mt
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+= --disable-gui --disable-wxwidgets
.else
LIB_DEPENDS+=	x11/wxWidgets>=2.8.10
WANTLIB+=	wx_base wx_base_net wx_base_odbc wx_base_xml wx_gtk2_adv \
		wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid wx_gtk2_html \
		wx_gtk2_qa wx_gtk2_xrc wx_gtk2_richtext
.endif

NO_TEST=    Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/ja.po
	${INSTALL_DATA_DIR} ${PREFIX}/man/zh_CN.po
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
.for i in mkvextract mkvinfo mkvmerge mkvpropedit
	${INSTALL_PROGRAM} ${WRKBUILD}/src/$i ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doc/man/$i.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/doc/man/ja/$i.1 ${PREFIX}/man/ja.po
	${INSTALL_DATA} ${WRKSRC}/doc/man/zh_CN/$i.1 ${PREFIX}/man/zh_CN.po	
.endfor
.if !${FLAVOR:Mno_x11}
	${INSTALL_PROGRAM} ${WRKBUILD}/src/mmg/mmg ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doc/man/mmg.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/mkvtoolnix/images
	${INSTALL_DATA} ${WRKSRC}/doc/guide/en/mkvmerge-gui.* ${PREFIX}/share/mkvtoolnix
	${INSTALL_DATA} ${WRKSRC}/doc/guide/en/images/*.gif ${PREFIX}/share/mkvtoolnix/images
.endif
.for l in de ja nl ru uk zh_CN zh_TW
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$l/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/po/$l.mo ${PREFIX}/share/locale/$l/LC_MESSAGES/mkvtoolnix.mo
.endfor

.include <bsd.port.mk>
