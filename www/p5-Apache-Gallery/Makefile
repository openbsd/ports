# $OpenBSD: Makefile,v 1.19 2014/04/13 01:01:39 naddy Exp $


COMMENT=		mod_perl Apache gallery handler

MODULES=		cpan
DISTNAME=		Apache-Gallery-1.0.2
EPOCH =			0
REVISION =		1
CATEGORIES=		www
HOMEPAGE=		http://www.apachegallery.dk/
MASTER_SITES =		${HOMEPAGE}/download/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-URI \
			graphics/p5-Image-Info \
			graphics/p5-Image-Size>=3.1.1 \
			textproc/p5-Text-Template \
			graphics/p5-Image-Imlib2 \
			www/mod_perl \
			www/p5-libapreq>=1.0

BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-Pod \
			devel/p5-Test-MockObject

TEMPLATESDIR=   ${PREFIX}/share/Apache-Gallery/templates
ICONSDIR=       ${PREFIX}/share/Apache-Gallery/icons
DOCSDIR=        ${PREFIX}/share/doc/Apache-Gallery

post-install:
	${INSTALL_DATA_DIR} ${TEMPLATESDIR}
.for i in bright new default
	${INSTALL_DATA_DIR} ${TEMPLATESDIR}/${i}
	${INSTALL_DATA} ${WRKSRC}/templates/${i}/*.tpl ${TEMPLATESDIR}/${i}
	${INSTALL_DATA} ${WRKSRC}/templates/bright/navdirectory.tpl ${TEMPLATESDIR}/${i}
	${INSTALL_DATA} ${WRKSRC}/templates/${i}/gallery.css \
		${TEMPLATESDIR}/${i}
.endfor
	${INSTALL_DATA_DIR} ${ICONSDIR}
	${INSTALL_DATA} ${WRKSRC}/htdocs/*.png ${ICONSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/{README,INSTALL} ${DOCSDIR}

	${SUBST_CMD} -c ${FILESDIR}/apache-gallery.conf \
		${DOCSDIR}/apache-gallery.conf.dist
	chown ${SHAREOWN}:${SHAREGRP} ${DOCSDIR}/apache-gallery.conf.dist

.include <bsd.port.mk>
