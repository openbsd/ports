# OpenBSD Makefile for:			mp3info
# Version required:			0.2.15
# Date created:				May 22, 1999
# Whom:					Angelos D. Keromytis
#
# $Id: Makefile,v 1.2 1999/05/23 01:48:35 angelos Exp $
# $OpenBSD: Makefile,v 1.2 1999/05/23 01:48:35 angelos Exp $
#

DISTNAME=		mp3info-0.2.16
CATEGORIES=		audio
MASTER_SITES=		ftp://bimbo.hive.no/pub/mp3info/

MAINTAINER=		angelos@openbsd.org

GNU_CONFIGURE=		yes
CONFIGURE_ENV=		CPPFLAGS="${CFLAGS}"

MAN1=			mp3info.1

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/mp3info ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/mp3info.1 ${PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	@ ${MKDIR} ${PREFIX}/share/doc/mp3info
.for file in ChangeLog README
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/mp3info
.endfor
.endif

.include <bsd.port.mk>
