# $OpenBSD: Makefile,v 1.18 2010/07/11 05:23:20 kili Exp $

SHARED_ONLY=		Yes

COMMENT=		vector font editor/converter

DISTNAME=		fontforge_full-20100501
PKGNAME=		${DISTNAME:S,_full,,}
EXTRACT_SUFX=		.tar.bz2
SHARED_LIBS=		fontforge	3.0 \
			gdraw		5.0 \
			gioftp		2.0 \
			gunicode	5.0 \
			gutils		2.0

CATEGORIES=		print

HOMEPAGE=		http://fontforge.sourceforge.net/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fontforge/}

REVISION =		0

WANTLIB +=		ICE SM X11 Xau Xdmcp Xext Xft Xi Xrender c cairo \
			expat fontconfig freetype gif glib-2.0 glitz \
			gmodule-2.0 gobject-2.0 gthread-2.0 jpeg m pcre \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pangoxft-1.0 \
			pixman-1 png pthread pthread-stubs tiff util xcb \
			xcb-render xcb-render-util xkbfile xkbui xml2 z
 
MODULES=		devel/gettext lang/python

LIB_DEPENDS=		${MODPY_LIB_DEPENDS}	\
			::graphics/cairo	\
			::graphics/jpeg		\
			::devel/pango		\
			::graphics/png		\
			::graphics/tiff		\
			::graphics/libungif	\
			::textproc/libxml

WRKDIST=		${WRKDIR}/${DISTNAME:S,_full,,}

.if ${MACHINE_ARCH:Mmips64el}
# XXX gcc 3.3 ICE
MAKE_FLAGS +=		CFLAGS_fontinfo.c=-O1
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include		\
				  -I${LOCALBASE}/include/libpng"	\
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib	\
				 -lintl -liconv -lz"
CONFIGURE_ARGS=		--without-freetype-src \
			--with-python=${MODPY_BIN} \
			--with-python-lib="$$(python${MODPY_VERSION}-config --libs)" \
			--with-regular-link
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes

NO_REGRESS=		Yes

post-extract:
	find ${WRKSRC} -name \*.orig -o -name \*.rej | xargs rm

.include <bsd.port.mk>
