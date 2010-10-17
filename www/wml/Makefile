# $OpenBSD: Makefile,v 1.6 2010/10/17 22:00:07 jasper Exp $

COMMENT=		Website META Language

DISTNAME=		wml-2.0.11
REVISION=		1
CATEGORIES=		www

HOMEPAGE=		http://www.thewml.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/distrib/

WANTLIB=		c m ncurses perl util
MODULES=		devel/gettext

RUN_DEPENDS=		::devel/p5-Term-ReadKey \
			::graphics/p5-GD \
			::graphics/p5-Image-Size \
			::math/p5-Bit-Vector \
			::www/p5-HTML-Clean \
			::www/tidy
BUILD_DEPENDS=		${RUN_DEPENDS}

# Using perl libtool gives:
# strip: /usr/obj/ports/wml-2.0.11/fake-amd64//usr/local/libexec/wml/#INST@29788#:
#	File format not recognized
# May be unrelated, but forcing GNU libtool lets this build at least.
USE_LIBTOOL=		Gnu

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-openworld
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_ENV=		EXT_TIDY=${LOCALBASE}/bin/tidy \
			EXT_HTMLCLEAN=${LOCALBASE}/bin/htmlclean

post-extract:
	@rm -f ${WRKSRC}/wml_aux/tidy/*.orig

.include <bsd.port.mk>
