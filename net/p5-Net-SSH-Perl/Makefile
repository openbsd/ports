COMMENT =	perl implementation of the SSH1 and SSH2 protocols

MODULES =	cpan
DISTNAME =	Net-SSH-Perl-2.144
CPAN_AUTHOR =	BRIANDFOY
CATEGORIES =	net security

# perl
PERMIT_PACKAGE =	Yes

HOMEPAGE =	https://github.com/briandfoy/net-ssh-perl

WANTLIB += c perl

# SSHv1
RUN_DEPENDS =	devel/p5-String-CRC32 \
		math/p5-Math-GMP \
		security/p5-Crypt-IDEA
# SSHv2
RUN_DEPENDS +=	devel/p5-File-HomeDir \
		security/p5-Digest-BubbleBabble \
		security/p5-CryptX \
		security/p5-Crypt-Curve25519

# 03-packet.t needs this
TEST_ENV =	HOME=${WRKDIST}

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
