# $OpenBSD: Makefile,v 1.14 2000/12/14 13:23:01 espie Exp $

DISTNAME=	sam
PKGNAME=	sam-4.3-19980506
CATEGORIES=	plan9
NEED_VERSION=	1.342
MASTER_SITES=	ftp://netlib.bell-labs.com/netlib/research/ \
		http://netlib.bell-labs.com/netlib/research/
EXTRACT_SUFX=	.shar.gz

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

SAMDOCDIR=	${PREFIX}/share/doc/sam
SAMDOCFILES=	README doc/sam.ps doc/sam.tut.ms doc/se.ps doc/Sam.ad

post-install:
	${INSTALL_DATA_DIR} ${SAMDOCDIR}
	${INSTALL_MAN} $(WRKSRC)/doc/sam.1 $(PREFIX)/man/man1
	@set -e; for f in ${SAMDOCFILES}; do \
	 ${INSTALL_DATA} ${WRKSRC}/$${f} ${SAMDOCDIR}; \
	done

.include <bsd.port.mk>
