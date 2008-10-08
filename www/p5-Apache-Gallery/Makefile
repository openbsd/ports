# $OpenBSD: Makefile,v 1.7 2008/10/08 13:14:15 jasper Exp $


COMMENT=		mod_perl Apache gallery handler

MODULES=		cpan
DISTNAME=		Apache-Gallery-0.9.1
PKGNAME=		p5-${DISTNAME}p2
CATEGORIES=		www

HOMEPAGE=		http://www.apachegallery.dk/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-URI \
			::graphics/p5-Image-Info \
			:p5-Image-Size->=3.1.1:graphics/p5-Image-Size \
			::textproc/p5-Text-Template \
			::graphics/p5-Image-Imlib2 \
			:mod_perl-*:www/mod_perl \
			:p5-libapreq->=1.0:www/p5-libapreq

BUILD_DEPENDS=		${RUN_DEPENDS}
REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-MockObject

TEMPLATESDIR=   ${PREFIX}/share/Apache-Gallery/templates
ICONSDIR=       ${PREFIX}/share/Apache-Gallery/icons
DOCSDIR=        ${PREFIX}/share/doc/Apache-Gallery

post-install:
	${INSTALL_DATA_DIR} ${TEMPLATESDIR}
.for i in new default
	${INSTALL_DATA_DIR} ${TEMPLATESDIR}/${i}
	${INSTALL_DATA} ${WRKSRC}/templates/${i}/*.tpl ${TEMPLATESDIR}/${i}
	${INSTALL_DATA} ${WRKSRC}/templates/${i}/gallery.css \
		${TEMPLATESDIR}/${i}
.endfor
	${INSTALL_DATA_DIR} ${ICONSDIR}
	${INSTALL_DATA} ${WRKSRC}/htdocs/*.png ${ICONSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/{README,INSTALL} ${DOCSDIR}
	${INSTALL_DATA} ${FILESDIR}/README.chroot ${DOCSDIR}
	${SUBST_CMD} ${DOCSDIR}/README.chroot && \
		rm ${DOCSDIR}/README.chroot.bak

.include <bsd.port.mk>
