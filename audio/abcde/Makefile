# $OpenBSD: Makefile,v 1.3 2002/07/09 10:52:24 wilfried Exp $

COMMENT=	"command-line utility to rip and encode audio cds"

V=		2.0.3
DISTNAME=	abcde_$V.orig
PKGNAME=	abcde-$V
CATEGORIES=	audio

HOMEPAGE=	http://frantica.lly.org/~rcw/abcde/page/

MAINTAINER=	Han Boetes <han@mijncomputer.nl>

# Artistic and GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MS=		http://frantica.lly.org/~rcw/
MASTER_SITES=	${MS}abcde/
MASTER_SITES0=	${MS}cd-discid/
MASTER_SITES1=	${MS}id3/
DISTFILES=	${DISTNAME}.tar.gz \
		cd-discid_0.7.orig.tar.gz:0

RUN_DEPENDS=	:cdparanoia-*:audio/cdparanoia \
		:wget-*:net/wget

FLAVORS=	lame
FLAVOR?=	

NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/${PKGNAME}

.if ${FLAVOR:L:Mlame}
DISTFILES+=	id3_0.12.orig.tar.gz:1
RUN_DEPENDS+=	:lame-*:audio/lame
.else
RUN_DEPENDS+=	:vorbis-tools-*:audio/vorbis-tools
.endif

post-patch:
.if ${FLAVOR:L:Mlame}
	perl -pi -e 's,OUTPUTTYPE=ogg,OUTPUTTYPE=mp3,g' ${WRKSRC}/abcde
.endif

do-build:
	cd ${WRKDIR}/cd-discid-0.7 && \
		${CC} ${CFLAGS} -o cd-discid cd-discid.c
.if ${FLAVOR:L:Mlame}
	cd ${WRKDIR}/id3-0.12 && \
		perl -pi -e 's,#include <getopt.h>,/*#include <getopt.h>*/,g' id3.c && \
		${CC} ${CFLAGS} -o id3 id3.c
.endif

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/abcde ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/cddb-tool ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIR}/cd-discid-0.7/cd-discid ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/abcde.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/cddb-tool.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIR}/cd-discid-0.7/cd-discid.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abcde
	${INSTALL_DATA} ${WRKSRC}/abcde.conf ${PREFIX}/share/examples/abcde
.if ${FLAVOR:L:Mlame}
	${INSTALL_PROGRAM} ${WRKDIR}/id3-0.12/id3 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIR}/id3-0.12/id3.1 ${PREFIX}/man/man1
.endif

.include <bsd.port.mk>
