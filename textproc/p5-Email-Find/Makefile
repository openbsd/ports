# $OpenBSD: Makefile,v 1.1 2004/04/24 16:13:50 peter Exp $

COMMENT=		"Find RFC 822 email addresses in plain text"

VERSION=		0.09
DISTNAME=		Email-Find-${VERSION}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Email/}

MAINTAINER=		Peter Galbavy <peter.galbavy@knowtion.net>

BUILD_DEPENDS=		::mail/p5-Mail-Tools ::mail/p5-Email-Valid
RUN_DEPENDS=		${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
