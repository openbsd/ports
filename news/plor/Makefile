# $OpenBSD: Makefile,v 1.2 1999/02/21 01:01:51 marc Exp $
#

DISTNAME=	plor-0.3.2
CATEGORIES=	news

MAINTAINER=	joey@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.psy.unipd.it/pub/pluto/developers/utils/

GNU_CONFIGURE=	yes

DOCFILES=	../AUTHORS ../NEWS TODO plor-1.html plor-2.html \
		plor.html plor.txt

post-install:
.if !defined{NOPORTDOCS}
	@${MKDIR} ${PREFIX}/share/doc/plor
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/plor
.endfor
.endif
	${INSTALL_MAN} ${FILESDIR}/plor.1 ${PREFIX}/man/man1/plor.1
	perl -pi -e '$$a = '\''${PREFIX}/share/doc/plor/'\''; $$a =~ s/([^\w\/])/\\$$1/g; s/FUNKYTOKENHERE/$$a/' ${PREFIX}/man/man1/plor.1

.include <bsd.port.mk>
