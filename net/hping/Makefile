# $OpenBSD: Makefile,v 1.13 2002/06/09 04:39:23 jsyn Exp $

COMMENT=	"TCP/UDP ping/traceroute tool"

DISTNAME=	hping2.0.0-rc1
PKGNAME=	hping-2.0.0rc1
CATEGORIES=	net
NEED_VERSION=	1.531
MASTER_SITES=	http://www.hping.org/
HOMEPAGE=	http://www.hping.org/

MAINTAINER=	Dug Song <dugsong@monkey.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/hping2

MAKE_FLAGS=	CC="${CC}" CCOPT="${CFLAGS} -Wall"

CONFIGURE_STYLE= simple

post-extract:
	@sed -e s#hping2#hping# -e s#HPING2#HPING# \
		${WRKSRC}/docs/hping2.8 > ${WRKSRC}/docs/hping.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hping2 ${PREFIX}/sbin/hping
	${INSTALL_MAN} ${WRKSRC}/docs/hping.8 ${PREFIX}/man/man8/hping.8

.include <bsd.port.mk>
