# $OpenBSD: Makefile,v 1.34 2013/06/04 18:41:55 naddy Exp $

SHARED_ONLY=		Yes

COMMENT=		vector font editor/converter

DISTNAME=		fontforge_full-20110222
PKGNAME=		${DISTNAME:S,_full,,}
REVISION=		0
EXTRACT_SUFX=		.tar.bz2
SHARED_LIBS=		fontforge	4.0 \
			gdraw		5.1 \
			gioftp		2.1 \
			gunicode	5.1 \
			gutils		2.1

CATEGORIES=		print

HOMEPAGE=		http://fontforge.sourceforge.net/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fontforge/}

WANTLIB +=		ICE SM X11 Xau Xdmcp Xext Xft Xi Xrender c cairo \
			expat fontconfig freetype gif glib-2.0 \
			gmodule-2.0 gobject-2.0 gthread-2.0 jpeg m pcre \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pangoxft-1.0 \
			pixman-1 png pthread pthread-stubs tiff util xcb \
			xcb-render xkbfile xkbui xml2 z GL Xdamage \
			Xfixes Xxf86vm drm xcb-shm ${MODPY_WANTLIB}
 
MODULES=		devel/gettext lang/python

LIB_DEPENDS=		${MODPY_LIB_DEPENDS}	\
			graphics/cairo	\
			graphics/jpeg		\
			devel/pango		\
			graphics/png		\
			graphics/tiff		\
			graphics/libungif	\
			textproc/libxml

WRKDIST=		${WRKDIR}/${DISTNAME:S,_full,,}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"		\
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib	\
				 -lintl -liconv -lz"
CONFIGURE_ARGS=		--without-freetype-src \
			--with-python=${MODPY_BIN} \
			--with-python-lib="$$(python${MODPY_VERSION}-config --libs)" \
			--with-regular-link
USE_GMAKE=		Yes
USE_GROFF =		Yes

NO_TEST=		Yes

post-extract:
	find ${WRKSRC} -name \*.orig -o -name \*.rej | xargs rm

.include <bsd.port.mk>
