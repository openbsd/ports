# $OpenBSD: Makefile.inc,v 1.3 2013/03/11 11:35:48 espie Exp $

COMMENT=	raw IP packet construction library

DISTNAME=	libnet-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.packetfactory.net/projects/libnet/


PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= autoconf no-autoheader


TEST_TARGET=		test
TEST_IS_INTERACTIVE=	Yes

post-test:
	@cd ${WRKSRC}/test; ${SUDO} ./test-step.sh

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif

