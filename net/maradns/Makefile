# $OpenBSD: Makefile,v 1.7 2007/06/09 11:15:48 rui Exp $

VERSION=	1.2.12.06
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

post-extract:
	rm ${WRKSRC}/doc/en/source/csv2.ej.orig
	rm ${WRKSRC}/doc/en/source/mararc.ej.orig
	rm ${WRKSRC}//parse/Csv2_rr_wks.c.orig
	rm ${WRKSRC}/server/MaraDNS.c.orig
	rm ${WRKSRC}/server/recursive.c.orig

post-configure:
	@find ${WRKSRC} -type f | xargs perl -pi -e "s,/etc,${SYSCONFDIR},g"
	@perl -pi -e "s, = 99, = 537," ${WRKSRC}/doc/en/examples/ex*

post-install:
	@mv ${PREFIX}/share/doc/maradns/examples \
		${PREFIX}/share/examples/maradns

.include <bsd.port.mk>
