# $OpenBSD: Makefile,v 1.5 1999/06/03 01:16:14 brad Exp $

DISTNAME=	sam
PKGNAME=	sam-4.3-19980506
CATEGORIES=	plan9
MAINTAINER=	markus.friedl@informatik.uni-erlangen.de
MASTER_SITES=	ftp://netlib.bell-labs.com/netlib/research/ \
		http://netlib.bell-labs.com/netlib/research/
EXTRACT_SUFX=	.shar.gz

NO_WRKSUBDIR=	yes
EXTRACT_CMD=	${GZCAT}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

SAMDOCDIR=	${PREFIX}/share/doc/sam
SAMDOCFILES=	sam.ps sam.tut.ms se.ps Sam.ad

post-install:
	${INSTALL_MAN} $(WRKSRC)/doc/sam.1 $(PREFIX)/man/man1
	${MKDIR} ${SAMDOCDIR}
	@set -e; for f in ${SAMDOCFILES}; do \
		${INSTALL_DATA} ${WRKSRC}/doc/$${f} ${SAMDOCDIR}/$${f}; \
	done
	${INSTALL_DATA} ${WRKSRC}/README ${SAMDOCDIR}/

.include <bsd.port.mk>
