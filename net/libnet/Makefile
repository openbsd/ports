# $OpenBSD: Makefile,v 1.24 2002/10/27 23:13:03 naddy Exp $

COMMENT=	"raw IP packet construction library"

DISTNAME=	libnet-1.0.2a
CATEGORIES=	net

MASTER_SITES=	http://www.packetfactory.net/libnet/dist/

HOMEPAGE=	http://www.packetfactory.net/Projects/Libnet/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= autoconf

WRKDIST=	${WRKDIR}/Libnet-1.0.2a

REGRESS_TARGET=		test
REGRESS_IS_INTERACTIVE=	Yes

post-regress:
	@cd ${WRKSRC}/test; ${SUDO} ./test-step.sh

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
