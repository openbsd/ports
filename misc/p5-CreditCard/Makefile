# $OpenBSD: Makefile,v 1.7 2002/06/08 18:56:34 wilfried Exp $

COMMENT=	"verify credit card pins"

DISTNAME=	Business-CreditCard-0.21
CATEGORIES=	misc perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Business/}

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

NO_REGRESS=		Yes

do-configure:

do-build:
	@cd ${WRKSRC} && pod2man CreditCard.pm > Business::CreditCard.3p

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/Business
	${INSTALL_DATA} ${WRKSRC}/CreditCard.pm ${PREFIX}/${P5SITE}/Business/
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3p/
	${INSTALL_MAN} ${WRKSRC}/Business::CreditCard.3p ${PREFIX}/man/man3p/

.include <bsd.port.mk>
