# $OpenBSD: Makefile,v 1.3 2005/12/12 19:05:42 sturm Exp $

COMMENT=	"perl implementation of the SSH1 and SSH2 protocols"

DISTNAME=	Net-SSH-Perl-1.29
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net security perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

BUILD_DEPENDS=	${RUN_DEPENDS}
# SSHv1
RUN_DEPENDS=	::devel/p5-String-CRC32 \
		::math/p5-Math-GMP
# SSHv2
RUN_DEPENDS+=	::converters/p5-Convert-PEM \
		::security/p5-Crypt-DH \
		::security/p5-Crypt-DSA \
		::security/p5-Crypt-RSA \
		::security/p5-Digest-BubbleBabble \
		::security/p5-Digest-HMAC \
		:p5-Digest-SHA1->=2.10:security/p5-Digest-SHA1

CONFIGURE_STYLE=perl

PKG_ARCH=	*

# 03-packet.t just hangs in test 2, known since early 2004
NO_REGRESS=	Yes

.include <bsd.port.mk>
