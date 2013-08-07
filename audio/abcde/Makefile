# $OpenBSD: Makefile,v 1.21 2013/08/07 21:31:12 naddy Exp $

COMMENT=	command-line utility to rip and encode audio cds

DISTNAME=	abcde-2.5.4
REVISION=	0
CATEGORIES=	audio

HOMEPAGE=	https://code.google.com/p/abcde/

# Artistic or GPLv2, but "Copyright for this work is to expire
# January 1, 2010, after which it shall be public domain."
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://abcde.googlecode.com/files/
MASTER_SITES0=	http://lly.org/~rcw/id3/ \
		http://lly.org/~rcw/id3/old/

RUN_DEPENDS=	audio/cdparanoia \
		audio/cd-discid \
		audio/id3lib \
		audio/vorbis-tools \
		shells/bash

NO_TEST=	Yes

do-configure:
	perl -pi -e 's,/etc/,${SYSCONFDIR}/,' ${WRKSRC}/abcde
	${SUBST_CMD} ${WRKSRC}/abcde ${WRKSRC}/cddb-tool

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/abcde ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/cddb-tool ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/abcde.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/cddb-tool.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abcde
	${INSTALL_DATA} ${WRKSRC}/abcde.conf ${PREFIX}/share/examples/abcde

.include <bsd.port.mk>
