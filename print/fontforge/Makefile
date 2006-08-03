# $OpenBSD: Makefile,v 1.6 2006/08/03 23:28:11 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		"vector font editor/converter"

DISTNAME=		fontforge_full-20060715
PKGNAME=		${DISTNAME:S,_full,,}
EXTRACT_SUFX=		.tar.bz2
SHARED_LIBS=		gdraw		1.9 \
			gunicode	2.2
CATEGORIES=		print

HOMEPAGE=		http://fontforge.sourceforge.net/

MAINTAINER=		Matthias Kilian <kili@outback.escape.de>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fontforge/}

WANTLIB=		ICE SM X11 Xi c freetype m xkbui z

MODULES=		devel/gettext

LIB_DEPENDS=		png.>=5::graphics/png		\
			tiff.>=38::graphics/tiff		\
			ungif.>=5::graphics/libungif	\
			jpeg.>=62::graphics/jpeg		\
			xml2.>=9::textproc/libxml

WRKDIST=		${WRKDIR}/${DISTNAME:S,_full,,}

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu autoconf no-autoheader dest
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include		\
				  -I${LOCALBASE}/include/libpng"	\
			LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv"
CONFIGURE_ARGS=		--with-regular-link
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

NO_REGRESS=		Yes

post-extract:
	find ${WRKSRC} -name \*.orig -o -name \*.rej | xargs rm

.include <bsd.port.mk>
