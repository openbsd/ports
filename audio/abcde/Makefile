# $OpenBSD: Makefile,v 1.15 2009/08/24 14:38:47 sthen Exp $

COMMENT=	command-line utility to rip and encode audio cds

V=		2.3.0
# cd-diskid version number
V2=		0.9
DISTNAME=	abcde-$V
CATEGORIES=	audio

HOMEPAGE=	http://www.hispalinux.es/~data/abcde.php

# Artistic and GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MS=		http://www.hispalinux.es/~data/files/ \
		http://spacehopper.org/mirrors/
MASTER_SITES=	${MS}
MASTER_SITES0=	${MS:=cd-discid/}
MASTER_SITES1=	http://lly.org/~rcw/id3/old/ \
		http://lly.org/~rcw/id3/
DISTFILES=	${DISTNAME:S,-,_,}.orig.tar.gz \
		cd-discid_${V2}.orig.tar.gz:0

RUN_DEPENDS=	:cdparanoia-*:audio/cdparanoia

FLAVORS=	lame
FLAVOR?=	

NO_REGRESS=	Yes

.if ${FLAVOR:L:Mlame}
DISTFILES+=	id3_0.12.orig.tar.gz:1
RUN_DEPENDS+=	:lame-*:audio/lame
.else
RUN_DEPENDS+=	:vorbis-tools-*:audio/vorbis-tools
.endif
SUPDISTFILES=	id3_0.12.orig.tar.gz:1

pre-configure:
.if ${FLAVOR:L:Mlame}
	perl -pi -e 's,OUTPUTTYPE=ogg,OUTPUTTYPE=mp3,g' ${WRKSRC}/abcde
.endif

do-build:
	cd ${WRKDIR}/cd-discid-${V2} && \
		${CC} ${CFLAGS} -o cd-discid cd-discid.c
.if ${FLAVOR:L:Mlame}
	cd ${WRKDIR}/id3-0.12 && \
		perl -pi -e 's,#include <getopt.h>,/*#include <getopt.h>*/,g' id3.c && \
		${CC} ${CFLAGS} -o id3 id3.c
.endif

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/abcde ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/cddb-tool ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIR}/cd-discid-${V2}/cd-discid ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/abcde.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/cddb-tool.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIR}/cd-discid-${V2}/cd-discid.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abcde
	${INSTALL_DATA} ${WRKSRC}/abcde.conf ${PREFIX}/share/examples/abcde
.if ${FLAVOR:L:Mlame}
	${INSTALL_PROGRAM} ${WRKDIR}/id3-0.12/id3 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIR}/id3-0.12/id3.1 ${PREFIX}/man/man1
.endif

.include <bsd.port.mk>
