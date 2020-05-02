# $OpenBSD: Makefile,v 1.3 2020/05/02 08:43:25 landry Exp $

COMMENT=	perl-based deployment and configuration management

CPAN_AUTHOR=	FERKI
DISTNAME=	Rex-1.9.0

CATEGORIES=	sysutils

HOMEPAGE=	https://www.rexify.org/

MODULES=	cpan

# Apache 2.0
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	converters/p5-JSON-XS \
		converters/p5-JSON-MaybeXS \
		devel/p5-Data-Validate-IP \
		devel/p5-Devel-Caller \
		devel/p5-Hash-Merge \
		devel/p5-IO-String \
		devel/p5-List-MoreUtils \
		devel/p5-Sort-Naturally \
		devel/p5-Test-Pod \
		devel/p5-YAML \
		net/p5-Net-OpenSSH \
		net/p5-Net-SFTP-Foreign \
		net/p5-Net-SSH2 \
		security/p5-Digest-HMAC \
		textproc/p5-Text-Glob \
		textproc/p5-XML-Simple \
		www/p5-LWP-UserAgent-Determined

TEST_DEPENDS=	devel/p5-Test-Deep \
		devel/p5-Test-UseAllModules

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Rex
	${INSTALL_DATA} ${FILESDIR}/example1.pl ${PREFIX}/share/examples/p5-Rex/

.include <bsd.port.mk>
