# $OpenBSD: Makefile,v 1.1.1.1 2000/10/02 05:06:48 brad Exp $

DISTNAME=	HTML-0.6
PKGNAME=	p5-HTML-Base-0.6
CATEGORIES=	www perl5
NEED_VERSION=	1.336
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= HTML

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKSRC} && pod2man html_base.pod HTML::Base.3p

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/perl5/site_perl/${ARCH}-openbsd/HTML
	${INSTALL_DATA} ${WRKSRC}/HTML/Base.pm \
		${PREFIX}/libdata/perl5/site_perl/${ARCH}-openbsd/HTML
	${INSTALL_MAN} ${WRKSRC}/HTML::Base.3p ${PREFIX}/man/man3

.include <bsd.port.mk>
