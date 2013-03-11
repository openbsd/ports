# $OpenBSD: Makefile,v 1.15 2013/03/11 11:44:45 espie Exp $

COMMENT=	base HTML library

MODULES=	cpan
DISTNAME=	HTML-0.6
PKGNAME=	p5-HTML-Base-0.6
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	Yes

WRKDIST=	${WRKDIR}

do-configure:

do-build:
	cd ${WRKSRC} && pod2man html_base.pod HTML::Base.3p

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${P5ARCH}/HTML
	${INSTALL_DATA} ${WRKSRC}/HTML/Base.pm \
		${PREFIX}/${P5ARCH}/HTML/
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3p/
	${INSTALL_MAN} ${WRKSRC}/HTML::Base.3p ${PREFIX}/man/man3p/

.include <bsd.port.mk>
