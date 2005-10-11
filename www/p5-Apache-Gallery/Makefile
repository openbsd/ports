# $OpenBSD: Makefile,v 1.3 2005/10/11 17:02:25 mbalmer Exp $


COMMENT=		"mod_perl Apache gallery handler"

DISTNAME=		Apache-Gallery-0.9.1
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		www perl5

MAINTAINER=		Michael Knudsen <mk@molioner.dk>
HOMEPAGE=		http://www.apachegallery.dk/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://apachegallery.dk/download/

RUN_DEPENDS=		::www/p5-URI \
			::graphics/p5-Image-Info \
			::graphics/p5-Image-Size \
			::textproc/p5-Text-Template \
			::graphics/p5-Image-Imlib2 \
			:mod_perl-*:www/mod_perl \
			:p5-libapreq->=1.0:www/p5-libapreq

BUILD_DEPENDS= ${RUN_DEPENDS}
REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-MockObject

CONFIGURE_STYLE=	perl

TEMPLATESDIR=   ${PREFIX}/share/Apache-Gallery/templates
ICONSDIR=       ${PREFIX}/share/Apache-Gallery/icons
DOCSDIR=        ${PREFIX}/share/doc/Apache-Gallery

pre-configure:
	@sed -e 's,%%LOCALBASE%%,${LOCALBASE},g;' \
		${FILESDIR}/README.chroot > ${WRKSRC}/README.chroot

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
	${INSTALL_DATA} ${WRKSRC}/README.chroot ${DOCSDIR}

.include <bsd.port.mk>
