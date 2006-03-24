# $OpenBSD: Makefile,v 1.2 2006/03/24 20:12:28 sturm Exp $

VERSION=	1.0.28
COMMENT=	"simple and performant DNS server"
DISTNAME=	maradns-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.maradns.org/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread

MAKE_FLAGS=	CC="${CC}" FLAGS="${CFLAGS}"

NO_REGRESS=	Yes
MASTER_SITES=	${HOMEPAGE}/download/ \
		http://maradns.3va.net/download/ \
		http://maradns.glou.net/download/

post-configure:
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/maragen/mararc.m4 \
		${WRKSRC}/parse/ParseMaraRc.c ${WRKSRC}/doc/en/examples/ex*
	@perl -pi -e "s, = 99, = 537," ${WRKSRC}/doc/en/examples/ex*

post-install:
	@mv ${PREFIX}/share/doc/maradns/examples \
		${PREFIX}/share/examples/maradns

.include <bsd.port.mk>
