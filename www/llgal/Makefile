COMMENT=	command-line online gallery generator

DISTNAME=	llgal-0.13.19
REVISION=	0
CATEGORIES=	www graphics

HOMEPAGE=	http://bgoglin.free.fr/llgal/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/bgoglin/llgal/archive/

BUILD_DEPENDS=	devel/gettext,-tools

RUN_DEPENDS=	graphics/ImageMagick \
		graphics/p5-Image-ExifTool \
		graphics/p5-Image-Size \
		devel/p5-Locale-gettext \
		www/p5-URI

USE_GMAKE=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

MAKE_ENV=	SYSCONFDIR=${SYSCONFDIR}
FAKE_FLAGS=	DOCDIR=${PREFIX}/share/doc/llgal
INSTALL_TARGET=	install install-doc

WRKDIST=	${WRKDIR}/llgal-${DISTNAME}

pre-build:
	@perl -pi -e 's,/usr/share,${PREFIX}/share,' ${WRKSRC}/llgal.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/llgal.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/llgalrc.5 ${PREFIX}/man/man5
	mv ${PREFIX}/share/doc/llgal/examples \
	       ${PREFIX}/share/examples/llgal
	mv ${PREFIX}/share/doc/llgal/llgalrc \
	       ${PREFIX}/share/examples/llgal/

.include <bsd.port.mk>
