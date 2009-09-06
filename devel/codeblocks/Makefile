# $OpenBSD: Makefile,v 1.1.1.1 2009/09/06 17:23:33 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Code::Blocks C/C++ IDE

BASENAME=	codeblocks-8.02
DISTNAME=	${BASENAME}-src
PKGNAME=	${BASENAME}

EXTRACT_SUFX=	.tar.bz2
WRKDIST=	${WRKDIR}/${BASENAME}

SHARED_LIBS +=  codeblocks	0.0 # .0.1
SHARED_LIBS +=  wxsmithlib	0.0 # .0.1

CATEGORIES=	devel x11

HOMEPAGE=	http://www.codeblocks.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs stdc++ xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=codeblocks/}

BUILD_DEPENDS=	::archivers/zip

LIB_DEPENDS=	bz2.>=10::archivers/bzip2 \
		wx_base.>=1,wx_base_net,wx_base_odbc,wx_base_xml,wx_gtk2_adv,wx_gtk2_aui,wx_gtk2_core,wx_gtk2_dbgrid,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_richtext,wx_gtk2_xrc::x11/wxWidgets

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		:shared-mime-info->=0.21:misc/shared-mime-info

MODULES=	devel/gettext

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--with-contrib-plugins=all

pre-configure:
	ln -s /usr/bin/true ${WRKDIR}/bin/svn
	${SUBST_CMD} ${WRKSRC}/src/sdk/resources/lexers/lexer_bash.sample \
		${WRKSRC}/src/plugins/compilergcc/compilergcc.cpp
	rm -f ${WRKSRC}/src/sdk/resources/lexers/lexer_bash.{bak,orig}

# template files are copied to HOME with their original mode which makes
# it impossible to edit them by default
post-install:
	find ${PREFIX}/share/codeblocks/templates/ -type f -perm 444 | \
		xargs chmod 644

.include <bsd.port.mk>
