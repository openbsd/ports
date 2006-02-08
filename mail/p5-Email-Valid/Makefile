# $OpenBSD: Makefile,v 1.3 2006/02/08 17:18:35 jolan Exp $

COMMENT=		"Check validity of Internet email addresses"

DISTNAME=		Email-Valid-0.15
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		mail perl5

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Email/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

REGRESS_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=		::mail/p5-Mail-Tools

.include <bsd.port.mk>
