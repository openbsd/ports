# $OpenBSD: Makefile,v 1.11 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT=	perl implementation of the SSH1 and SSH2 protocols

MODULES=	cpan
DISTNAME=	Net-SSH-Perl-1.30
REVISION=	1
CATEGORIES=	net security
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
# SSHv1
RUN_DEPENDS=	devel/p5-String-CRC32 \
		math/p5-Math-GMP
# SSHv2
RUN_DEPENDS+=	converters/p5-Convert-PEM \
		security/p5-Crypt-DH \
		security/p5-Crypt-DSA \
		security/p5-Crypt-RSA \
		security/p5-Digest-BubbleBabble \
		security/p5-Digest-HMAC \
		security/p5-Digest-SHA1>=2.10

# 03-packet.t just hangs in test 2, known since early 2004
NO_REGRESS=	Yes

.include <bsd.port.mk>
