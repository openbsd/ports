# $OpenBSD: Makefile.inc,v 1.4 2013/03/11 12:27:54 sthen Exp $

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

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif

