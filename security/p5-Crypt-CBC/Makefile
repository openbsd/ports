# $OpenBSD: Makefile,v 1.6 2002/05/15 17:58:49 espie Exp $

COMMENT=	"cryptographic cipher block chaining mode"

VERSION=	1.25
DISTNAME=	Crypt-CBC-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

BUILD_DEPENDS=	::security/p5-Digest-MD5
RUN_DEPENDS=	::security/p5-Digest-MD5

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl
NO_REGRESS=	Yes

.include <bsd.port.mk>	
