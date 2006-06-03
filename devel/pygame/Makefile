# $OpenBSD: Makefile,v 1.11 2006/06/03 09:37:09 alek Exp $

SHARED_ONLY=	Yes
.if ${MACHINE_ARCH} == "alpha"
BROKEN=		"smpeg"
.endif

COMMENT=	"set of Python modules designed for writing games"

DISTNAME=	pygame-1.6
PKGNAME=	${DISTNAME}p2
CATEGORIES=	devel games
HOMEPAGE=	http://www.pygame.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		SDL X11 Xext m smpeg usbhid

MASTER_SITES=	${HOMEPAGE}ftp/

MODULES=	lang/python

BUILD_DEPENDS+=	:py-Numeric-*:math/py-Numeric

LIB_DEPENDS=	SDL_ttf::devel/sdl-ttf \
		SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer

MAKE_ENV+=	LOCALBASE="${LOCALBASE}" \
		SDL_CONFIG="${LOCALBASE}/bin/sdl-config"

EXAMPLESDIR=	${PREFIX}/share/examples/pygame
DOCDIR=		${PREFIX}/share/doc/pygame
DOCSUBDIRS=	ref tut tut/chimp tut/surfarray \
		tut/tom util

do-configure:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} config.py

post-build:
	@perl -pi -e 's,/usr/bin/env python,/usr/bin/env python${MODPY_VERSION},g' \
		${WRKSRC}/examples/*.py
	@perl -pi -e 's,%%PYTHON%%,python${MODPY_VERSION},g' ${WRKSRC}/examples/*.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/readme.txt ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/data
	${INSTALL_SCRIPT} ${WRKSRC}/examples/data/* ${EXAMPLESDIR}/data
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/readme.* ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*.{gif,html} ${DOCDIR}
.for i in ${DOCSUBDIRS}
	${INSTALL_DATA_DIR} ${DOCDIR}/$i
	${INSTALL_DATA} `find ${WRKSRC}/docs/$i -maxdepth 1 -type f` \
		${DOCDIR}/$i
.endfor

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
			${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
