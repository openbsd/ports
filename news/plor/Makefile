# $OpenBSD: Makefile,v 1.8 2000/04/24 06:22:12 kevlo Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	plor-0.3.2
CATEGORIES=	news

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.psy.unipd.it/pub/pluto/developers/utils/

GNU_CONFIGURE=	Yes
FAKE=		Yes

DOCFILES=	../AUTHORS ../NEWS TODO plor-1.html plor-2.html \
		plor.html plor.txt

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/plor ${PREFIX}/bin  
.if !defined{NOPORTDOCS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/plor
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/plor
.endfor
.endif
	${INSTALL_MAN} ${FILESDIR}/plor.1 ${PREFIX}/man/man1/plor.1
	perl -pi -e '$$a = '\''${PREFIX}/share/doc/plor/'\''; $$a =~ s/([^\w\/])/\\$$1/g; s/FUNKYTOKENHERE/$$a/' ${PREFIX}/man/man1/plor.1

.include <bsd.port.mk>
