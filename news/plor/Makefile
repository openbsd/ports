# OpenBSD makefile for:	plor
# Version Required:	0.3.0
# Date Created:		19 Dec 1997
# Whom:			joey
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/20 02:36:06 joey Exp $
#

DISTNAME=	plor-0.3.1
CATEGORIES=	news
MASTER_SITES=	ftp://ftp.psy.unipd.it/pub/pluto/developers/ \
		ftp://ftp.unipd.it/pub/Linux/pluto/developers/ \
		ftp://ftp.linux.it/pub/Pluto/developers/

MAINTAINER=	joey@OpenBSD.ORG

GNU_CONFIGURE=	yes

MAN1=		plor.1

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
