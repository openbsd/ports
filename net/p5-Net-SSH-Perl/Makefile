# $OpenBSD: Makefile,v 1.20 2018/09/09 23:45:31 sthen Exp $

COMMENT =	perl implementation of the SSH1 and SSH2 protocols

MODULES =	cpan
DISTNAME =	Net-SSH-Perl-2.14
CATEGORIES =	net security

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

# SSHv1
RUN_DEPENDS =	devel/p5-String-CRC32 \
		math/p5-Math-GMP \
		security/p5-Crypt-IDEA
# SSHv2
RUN_DEPENDS +=		devel/p5-File-HomeDir \
		security/p5-Digest-BubbleBabble \
		security/p5-CryptX \
		security/p5-Crypt-Curve25519

# 03-packet.t just hangs in test 2, known since early 2004
NO_TEST =	Yes

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
