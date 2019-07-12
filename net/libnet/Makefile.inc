# $OpenBSD: Makefile.inc,v 1.7 2019/07/12 20:48:30 sthen Exp $

COMMENT=	raw IP packet construction library

DISTNAME=	libnet-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://packetfactory.openwall.net/projects/libnet/


PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= autoconf no-autoheader


TEST_TARGET=		test
TEST_IS_INTERACTIVE=	Yes

post-test:
	@cd ${WRKSRC}/test; ${SUDO} ./test-step.sh
