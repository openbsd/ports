# $OpenBSD: Makefile.inc,v 1.8 2021/03/03 08:22:03 sthen Exp $

COMMENT=	raw IP packet construction library

DISTNAME=	libnet-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://packetfactory.openwall.net/projects/libnet/


PERMIT_PACKAGE=	Yes

TEST_TARGET=		test
TEST_IS_INTERACTIVE=	Yes

post-test:
	@cd ${WRKSRC}/test; ${SUDO} ./test-step.sh
