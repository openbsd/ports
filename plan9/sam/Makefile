# $OpenBSD: Makefile,v 1.3 1999/04/06 19:12:38 rohee Exp $
#

DISTNAME=		sam-4.3-19980506
CATEGORIES=             plan9
MAINTAINER=		markus.friedl@informatik.uni-erlangen.de

MASTER_SITES=		ftp://netlib.bell-labs.com/netlib/research/ \
			http://netlib.bell-labs.com/netlib/research/
DISTFILES=		sam.shar.gz

EXTRACT_SUFX=		.shar.gz
EXTRACT_CMD=		gzip -d <
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	|sh

NO_WRKSUBDIR=		yes

SAMDOCDIR=		${PREFIX}/share/doc/sam
SAMDOCFILES=		sam.ps sam.tut.ms se.ps Sam.ad

post-install:
	${INSTALL_MAN} $(WRKSRC)/doc/sam.1 $(PREFIX)/man/man1
.if !defined(NOPORTDOCS)
	${MKDIR} ${SAMDOCDIR}
	set -e; for f in ${SAMDOCFILES}; do \
		${INSTALL_DATA} ${WRKSRC}/doc/$${f} ${SAMDOCDIR}/$${f}; \
	done
	${INSTALL_DATA} ${WRKSRC}/README ${SAMDOCDIR}/
.endif

.include <bsd.port.mk>
