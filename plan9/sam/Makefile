# $OpenBSD: Makefile,v 1.28 2015/04/18 20:35:25 schwarze Exp $

COMMENT=	X11 version of Rob Pike's editor, sam

DISTNAME=	sam
PKGNAME=	sam-4.3.19980506
REVISION=	1
CATEGORIES=	plan9

MASTER_SITES=	ftp://netlib.bell-labs.com/netlib/research/ \
		http://netlib.bell-labs.com/netlib/research/
EXTRACT_SUFX=	.shar.gz
EXTRACT_CASES=	*.shar.gz) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | /bin/sh;;

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xt c pthread-stubs xcb

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

SAMDOCDIR=	${PREFIX}/share/doc/sam
SAMDOCFILES=	README doc/sam.ps doc/sam.tut.ms doc/se.ps doc/Sam.ad

post-install:
	${INSTALL_DATA_DIR} ${SAMDOCDIR}
	${INSTALL_MAN} $(WRKSRC)/doc/sam.1 $(PREFIX)/man/man1
	@set -e; for f in ${SAMDOCFILES}; do \
	 ${INSTALL_DATA} ${WRKSRC}/$${f} ${SAMDOCDIR}; \
	done

.include <bsd.port.mk>
