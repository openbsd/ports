# $OpenBSD: Makefile,v 1.13 2009/03/18 20:49:50 kili Exp $

SHARED_ONLY=		Yes

COMMENT=		vector font editor/converter

DISTNAME=		fontforge_full-20080927
PKGNAME=		${DISTNAME:S,_full,,}p0
EXTRACT_SUFX=		.tar.bz2
SHARED_LIBS=		fontforge	1.0 \
			gdraw		3.0 \
			gioftp		1.0 \
			gunicode	4.0 \
			gutils		1.0

CATEGORIES=		print

HOMEPAGE=		http://fontforge.sourceforge.net/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fontforge/}

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xi c freetype m \
			pthread util xkbfile xkbui z 

MODULES=		devel/gettext lang/python
MODPY_VERSION=		2.5

LIB_DEPENDS=		png.>=5::graphics/png		\
			tiff.>=38::graphics/tiff	\
			ungif.>=5::graphics/libungif	\
			jpeg.>=62::graphics/jpeg	\
			xml2.>=9::textproc/libxml	\
			${MODPY_LIB_DEPENDS}

WRKDIST=		${WRKDIR}/${DISTNAME:S,_full,,}

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu autoconf no-autoheader
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
