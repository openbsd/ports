# $OpenBSD: Makefile,v 1.8 2004/10/03 18:41:36 jcs Exp $

DISTNAME=	Net-SNMP-4.0.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net devel

MAINTAINER=	Joshua Stein <jcs@openbsd.org>

# perl artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Perl modules to access SNMP"
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

RUN_DEPENDS=	:p5-Crypt-DES->=2.03:security/p5-Crypt-DES \
		:p5-Digest-HMAC->=1:security/p5-Digest-HMAC \
		:p5-Digest-SHA1->=1.02:security/p5-Digest-SHA1
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
