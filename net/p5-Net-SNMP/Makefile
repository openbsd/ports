# $OpenBSD: Makefile,v 1.5 2002/10/30 04:46:31 pvalchev Exp $

DISTNAME=	Net-SNMP-4.0.1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net devel

MAINTAINER=	Joshua Stein <jcs@rt.fm>

# perl artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Perl modules to access SNMP"
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

BUILD_DEPENDS=	:p5-Crypt-DES->=2.03:security/p5-Crypt-DES \
		:p5-Digest-HMAC->=1:security/p5-Digest-HMAC \
		:p5-Digest-SHA1->=1.02:security/p5-Digest-SHA1
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
