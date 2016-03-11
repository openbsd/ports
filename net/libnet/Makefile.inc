# $OpenBSD: Makefile.inc,v 1.5 2016/03/11 18:13:19 naddy Exp $

COMMENT=	raw IP packet construction library

DISTNAME=	libnet-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.packetfactory.net/projects/libnet/


PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= autoconf no-autoheader


TEST_TARGET=		test
TEST_IS_INTERACTIVE=	Yes

post-test:
	@cd ${WRKSRC}/test; ${SUDO} ./test-step.sh
