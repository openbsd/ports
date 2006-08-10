# $OpenBSD: Makefile,v 1.4 2006/08/10 09:55:03 bernd Exp $

VERSION=	1.2.07.1
COMMENT=	"simple and performant DNS server"
DISTNAME=	maradns-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

HOMEPAGE=	http://www.maradns.org/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=maradns/}

MAKE_FLAGS=	CC="${CC}" FLAGS="${CFLAGS} -D_THREAD_SAFE -pthread"

NO_REGRESS=	Yes

post-configure:
	@find ${WRKSRC} -type f | xargs perl -pi -e "s,/etc,${SYSCONFDIR},g"
	@perl -pi -e "s, = 99, = 537," ${WRKSRC}/doc/en/examples/ex*

post-install:
	@mv ${PREFIX}/share/doc/maradns/examples \
		${PREFIX}/share/examples/maradns

.include <bsd.port.mk>
