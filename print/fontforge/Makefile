# $OpenBSD: Makefile,v 1.36 2014/01/14 17:16:06 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		vector font editor/converter

DISTNAME=		fontforge_full-20120731-b
PKGNAME=		${DISTNAME:S,_full,,:S,-b,,}
EXTRACT_SUFX=		.tar.bz2
SHARED_LIBS=		fontforge	4.0 \
			gdraw		5.1 \
			gioftp		2.1 \
			gunicode	5.1 \
			gutils		2.1

CATEGORIES=		print

HOMEPAGE=		http://fontforge.org/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xft Xi Xrender c cairo expat ffi fontconfig
WANTLIB += freetype gif glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 harfbuzz jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs ${MODPY_WANTLIB} tiff util xcb xcb-render xcb-shm
WANTLIB += xkbfile xkbui xml2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fontforge/}

MODULES=		devel/gettext lang/python

LIB_DEPENDS=		${MODPY_LIB_DEPENDS}	\
			graphics/cairo	\
			graphics/jpeg		\
			devel/pango		\
			graphics/png		\
			graphics/tiff		\
			graphics/giflib		\
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

.include <bsd.port.mk>
