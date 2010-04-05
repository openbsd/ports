# $OpenBSD: Makefile,v 1.20 2010/04/05 20:27:03 benoit Exp $

COMMENT =	create, alter and inspect Matroska files

DISTNAME =	mkvtoolnix-3.2.0
CATEGORIES =	multimedia x11

HOMEPAGE =	http://www.bunkus.org/videotools/mkvtoolnix/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c ebml expat m ogg stdc++ z

MASTER_SITES =	${HOMEPAGE}/sources/

EXTRACT_SUFX =	.tar.bz2

MODULES =	converters/libiconv

LIB_DEPENDS =	FLAC.>=7::audio/flac \
		bz2.>=10::archivers/bzip2 \
		lzo2::archivers/lzo2 \
		matroska:libmatroska->=0.8.1:multimedia/libmatroska \
		vorbis.>=5::audio/libvorbis \
		magic.>=1::devel/libmagic \
		boost_regex-mt.>=1.1,boost_filesystem-mt.>=1.1::devel/boost

MAKE_FLAGS +=	V=1

USE_GMAKE =	Yes
USE_X11 =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --enable-lzo \
		--enable-bz2 \
		--disable-qt \
		--with-flac \
		--with-boost-libdir=${LOCALBASE}/lib \
		--with-boost-regex=boost_regex-mt \
		--with-boost-filesystem=boost_filesystem-mt
CONFIGURE_ENV =	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib \
		-lm -lstdc++ -pthread -liconv" \
		ac_cv_has_nl_langinfo=no

FLAVORS =	no_x11
FLAVOR ?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS += --disable-gui
.else
WANTLIB +=	pthread
LIB_DEPENDS +=	wx_base,wx_base_net,wx_base_odbc,wx_base_xml,wx_gtk2_adv,wx_gtk2_core,wx_gtk2_dbgrid,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_xrc,wx_gtk2_aui,wx_gtk2_richtext:wxWidgets-gtk2->=2.6.3:x11/wxWidgets
CONFIGURE_ARGS += --enable-gui \
		--enable-wxwidgets
.endif

NO_REGRESS =    Yes

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
.for l in de ja zh_CN zh_TW
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$l/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/po/$l.mo ${PREFIX}/share/locale/$l/LC_MESSAGES/mkvtoolnix.mo
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/mkvtoolnix/images
	${INSTALL_DATA} ${WRKSRC}/doc/guide/en/mkvmerge-gui.* ${PREFIX}/share/mkvtoolnix
	${INSTALL_DATA} ${WRKSRC}/doc/guide/en/images/*.gif ${PREFIX}/share/mkvtoolnix/images

.include <bsd.port.mk>
