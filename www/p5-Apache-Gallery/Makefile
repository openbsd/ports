# $OpenBSD: Makefile,v 1.26 2019/07/12 20:50:49 sthen Exp $

COMMENT=		mod_perl Apache gallery handler

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Apache-Gallery-1.0.2
EPOCH=			0
REVISION=		5
CATEGORIES=		www
HOMEPAGE=		http://www.apachegallery.dk/
MASTER_SITES=		${HOMEPAGE}/download/

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-URI \
			graphics/p5-Image-Info \
			graphics/p5-Image-Size>=3.1.1 \
			textproc/p5-Text-Template \
			graphics/p5-Image-Imlib2 \
			www/ap2-mod_perl \
			www/p5-libapreq2

BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-Test-Pod \
			devel/p5-Test-MockObject

TEMPLATESDIR=   ${PREFIX}/share/Apache-Gallery/templates
ICONSDIR=       ${PREFIX}/share/Apache-Gallery/icons
DOCSDIR=        ${PREFIX}/share/doc/Apache-Gallery

MAKE_ENV=	MOD_PERL_API_VERSION=2

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

	${SUBST_CMD} -m 0644 -c ${FILESDIR}/apache-gallery.conf \
		${DOCSDIR}/apache-gallery.conf.dist
	chown ${SHAREOWN}:${SHAREGRP} ${DOCSDIR}/apache-gallery.conf.dist

.include <bsd.port.mk>
