# $OpenBSD: Makefile,v 1.9 2000/08/20 06:08:01 obecian Exp $

DISTNAME=	hping2-beta54
PKGNAME=	hping-2.0b54
CATEGORIES=	net
NEED_VERSION=	1.310
MASTER_SITES=	http://www.kyuzz.org/antirez/hping2-src/

MAINTAINER=	dugsong@monkey.org

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
