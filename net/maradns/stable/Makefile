# $OpenBSD: Makefile,v 1.9 2004/10/31 19:04:57 sturm Exp $

VERSION=	1.0.23

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

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
