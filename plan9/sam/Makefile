# $OpenBSD: Makefile,v 1.7 2000/02/10 23:14:34 espie Exp $

DISTNAME=	sam
PKGNAME=	sam-4.3-19980506
CATEGORIES=	plan9
MASTER_SITES=	ftp://netlib.bell-labs.com/netlib/research/ \
		http://netlib.bell-labs.com/netlib/research/
EXTRACT_SUFX=	.shar.gz
NEED_VERSION=	1.191

EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | sh

MAINTAINER=	markus@openbsd.org

WRKDIST=	${WRKDIR}

SAMDOCDIR=	${PREFIX}/share/doc/sam
SAMDOCFILES=	README doc/sam.ps doc/sam.tut.ms doc/se.ps doc/Sam.ad

post-install:
	@${INSTALL_DATA_DIR} ${SAMDOCDIR}
	${INSTALL_MAN} $(WRKSRC)/doc/sam.1 $(PREFIX)/man/man1
	@set -e; for f in ${SAMDOCFILES}; do \
	 ${INSTALL_DATA} ${WRKSRC}/$${f} ${SAMDOCDIR}; \
	done

.include <bsd.port.mk>
