# $OpenBSD: Makefile,v 1.4 2009/11/09 17:09:22 bernd Exp $

COMMENT=		Website META Language

DISTNAME=		wml-2.0.11
PKGNAME=		${DISTNAME}p0
CATEGORIES=		www

HOMEPAGE=		http://www.thewml.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}distrib/

WANTLIB=		c m ncurses perl util
MODULES=		devel/gettext

RUN_DEPENDS=		::devel/p5-Term-ReadKey \
			::graphics/p5-GD \
			::graphics/p5-Image-Size \
			::math/p5-Bit-Vector \
			::www/p5-HTML-Clean \
			::www/tidy
BUILD_DEPENDS=		${RUN_DEPENDS}

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-openworld
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_ENV=		EXT_TIDY=${LOCALBASE}/bin/tidy \
			EXT_HTMLCLEAN=${LOCALBASE}/bin/htmlclean

post-extract:
	@rm -f ${WRKSRC}/wml_aux/tidy/*.orig

.include <bsd.port.mk>
