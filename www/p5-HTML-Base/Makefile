# $OpenBSD: Makefile,v 1.6 2002/05/15 17:58:50 espie Exp $

COMMENT=	"base HTML library"

DISTNAME=	HTML-0.6
PKGNAME=	p5-HTML-Base-0.6
CATEGORIES=	www perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKSRC} && pod2man html_base.pod HTML::Base.3p

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/HTML
	${INSTALL_DATA} ${WRKSRC}/HTML/Base.pm \
		${PREFIX}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/HTML
	${INSTALL_MAN} ${WRKSRC}/HTML::Base.3p ${PREFIX}/man/man3

.include <bsd.port.mk>
