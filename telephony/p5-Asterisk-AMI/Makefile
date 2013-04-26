# $OpenBSD: Makefile,v 1.1.1.1 2013/04/26 16:09:30 sthen Exp $

COMMENT=	interact with Asterisk Manager Interface from perl

DISTNAME=	Asterisk-AMI-v0.2.8
PKGNAME=	p5-${DISTNAME:S/-v/-/}
CATEGORIES=	telephony perl5

HOMEPAGE=	https://github.com/rrb3942/perl-Asterisk-AMI/

MODULES=	cpan
CPAN_AUTHOR=	GREENBEAN

# Artistic 2.0
PERMIT_PACKAGE_CDROM=	yes

RUN_DEPENDS=	devel/p5-AnyEvent>=5.2

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/p5-Asterisk-AMI

.include <bsd.port.mk>
