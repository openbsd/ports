# $OpenBSD: Makefile,v 1.10 2007/01/16 17:52:06 simon Exp $

COMMENT=	"base HTML library"

MODULES=	cpan
DISTNAME=	HTML-0.6
PKGNAME=	p5-HTML-Base-0.6p0
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

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
