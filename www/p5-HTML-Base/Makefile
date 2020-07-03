# $OpenBSD: Makefile,v 1.20 2020/07/03 21:45:59 sthen Exp $

COMMENT=	base HTML library

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-0.6
PKGNAME=	p5-HTML-Base-0.6
REVISION=	4
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
