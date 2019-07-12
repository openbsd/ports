# $OpenBSD: Makefile,v 1.19 2019/07/12 20:50:53 sthen Exp $

COMMENT=	base HTML library

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-0.6
PKGNAME=	p5-HTML-Base-0.6
REVISION=	3
CATEGORIES=	www

# GPL
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

WRKDIST=	${WRKDIR}

do-configure:

do-build:
	cd ${WRKSRC} && pod2man html_base.pod HTML::Base.3p

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/HTML
	${INSTALL_DATA} ${WRKSRC}/HTML/Base.pm \
		${PREFIX}/${P5SITE}/HTML/
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3p/
	${INSTALL_MAN} ${WRKSRC}/HTML::Base.3p ${PREFIX}/man/man3p/

.include <bsd.port.mk>
