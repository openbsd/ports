# $OpenBSD: Makefile,v 1.10 2000/10/22 14:03:33 espie Exp $

DISTNAME=	hping2-beta54
PKGNAME=	hping-2.0b54
CATEGORIES=	net
NEED_VERSION=	1.310
MASTER_SITES=	http://www.kyuzz.org/antirez/hping2-src/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CCOPT="${CFLAGS} -Wall"

CONFIGURE_STYLE= simple

post-extract:
	@sed -e s#hping2#hping# \
	     -e s#HPING2#HPING# \
		${WRKSRC}/docs/hping2.8 > ${WRKSRC}/docs/hping.8

.include <bsd.port.mk>
