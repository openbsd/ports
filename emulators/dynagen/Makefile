# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:08 sthen Exp $

COMMENT=		front-end for dynamips cisco emulator

DISTNAME=		dynagen-0.11.0
REVISION =		5
CATEGORIES=		emulators

HOMEPAGE =		http://sourceforge.net/projects/dyna-gen/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=dyna-gen/}

MODULES=		lang/python
RUN_DEPENDS=		emulators/dynamips

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

post-extract:
	@find ${WRKSRC} -type f -exec perl -pi -e 's:\x0d::' {} \;

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/dynagen

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/dynagen ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${DESTDIR}${MODPY_SITEPKG}/dynagen
	${INSTALL_SCRIPT} ${WRKSRC}/*.py* ${DESTDIR}${MODPY_SITEPKG}/dynagen
	${INSTALL_SCRIPT} ${FILESDIR}/*.py* ${DESTDIR}${MODPY_SITEPKG}/dynagen
	${INSTALL_DATA_DIR} ${PREFIX}/share/dynagen
	${INSTALL_DATA} ${WRKSRC}/configspec ${PREFIX}/share/dynagen
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dynagen/tutorial_files
	${INSTALL_DATA} ${WRKSRC}/docs/*htm* ${PREFIX}/share/doc/dynagen
	${INSTALL_DATA} ${WRKSRC}/docs/tutorial_files/* \
		${PREFIX}/share/doc/dynagen/tutorial_files
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dynagen
	${INSTALL_DATA} ${WRKSRC}/dynagen.ini ${PREFIX}/share/examples/dynagen
	@cp -R ${WRKSRC}/sample_labs/* ${PREFIX}/share/examples/dynagen

.include <bsd.port.mk>
