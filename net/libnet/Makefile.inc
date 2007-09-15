# $OpenBSD: Makefile.inc,v 1.2 2007/09/15 22:36:55 merdely Exp $

COMMENT=	raw IP packet construction library

DISTNAME=	libnet-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.packetfactory.net/projects/libnet/


PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= autoconf no-autoheader


REGRESS_TARGET=		test
REGRESS_IS_INTERACTIVE=	Yes

post-regress:
	@cd ${WRKSRC}/test; ${SUDO} ./test-step.sh

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif

