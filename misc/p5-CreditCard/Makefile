# $OpenBSD: Makefile,v 1.2 2000/08/21 02:13:22 brad Exp $

DISTNAME=	Business-CreditCard-0.21
CATEGORIES=	misc perl5
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Business

MAINTAINER=	espie@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-build:
	@cd ${WRKSRC} && pod2man CreditCard.pm > Business::CreditCard.3p

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/perl5/site_perl/Business
	${INSTALL_DATA} ${WRKSRC}/CreditCard.pm ${PREFIX}/libdata/perl5/site_perl/Business
	${INSTALL_MAN} ${WRKSRC}/Business::CreditCard.3p ${PREFIX}/man/man3

.include <bsd.port.mk>
