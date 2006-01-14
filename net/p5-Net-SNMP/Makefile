# $OpenBSD: Makefile,v 1.9 2006/01/14 10:38:56 steven Exp $

COMMENT=	"Perl modules to access SNMP"
DISTNAME=	Net-SNMP-5.2.0
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net devel perl5

MAINTAINER=	Joshua Stein <jcs@openbsd.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

RUN_DEPENDS=	:p5-Crypt-DES->=2.03:security/p5-Crypt-DES \
		:p5-Digest-HMAC->=1:security/p5-Digest-HMAC \
		:p5-Digest-SHA1->=1.02:security/p5-Digest-SHA1
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
