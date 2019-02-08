# $OpenBSD: Makefile.inc,v 1.6 2019/02/08 19:07:21 jasper Exp $

COMMENT=	raw IP packet construction library

DISTNAME=	libnet-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://packetfactory.openwall.net/projects/libnet/


PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= autoconf no-autoheader


TEST_TARGET=		test
TEST_IS_INTERACTIVE=	Yes

post-test:
	@cd ${WRKSRC}/test; ${SUDO} ./test-step.sh
