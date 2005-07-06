# $OpenBSD: Makefile,v 1.3 2005/07/06 23:18:11 jolan Exp $

COMMENT=		"Find RFC 822 email addresses in plain text"

VERSION=		0.09
DISTNAME=		Email-Find-${VERSION}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Email/}

RUN_DEPENDS=		::mail/p5-Mail-Tools ::mail/p5-Email-Valid
BUILD_DEPENDS=		${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
