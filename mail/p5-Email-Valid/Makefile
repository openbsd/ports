# $OpenBSD: Makefile,v 1.4 2006/10/10 13:38:52 kevlo Exp $

COMMENT=	"Check validity of Internet email addresses"

DISTNAME=	Email-Valid-0.176
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Email/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Mail-Tools->=1.67:mail/p5-Mail-Tools
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage \
			::net/p5-Net-Domain-TLD

.include <bsd.port.mk>
