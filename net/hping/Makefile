# $OpenBSD: Makefile,v 1.17 2004/04/21 00:16:12 naddy Exp $

COMMENT=	"TCP/UDP ping/traceroute tool"

DISTNAME=	hping2.0.0-rc2
PKGNAME=	hping-2.0.0rc2
CATEGORIES=	net
HOMEPAGE=	http://www.hping.org/

MAINTAINER=	Jose Nazario <jose@crimelabs.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WRKDIST=	${WRKDIR}/hping2-rc2

MAKE_FLAGS=	CC="${CC}" CCOPT="${CFLAGS} -Wall"

CONFIGURE_STYLE= simple

post-extract:
	@rm -f ${WRKSRC}/*.orig
	@sed -e s#hping2#hping# -e s#HPING2#HPING# \
		${WRKSRC}/docs/hping2.8 > ${WRKSRC}/docs/hping.8

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hping2 ${PREFIX}/sbin/hping
	${INSTALL_MAN} ${WRKSRC}/docs/hping.8 ${PREFIX}/man/man8/hping.8

.include <bsd.port.mk>
