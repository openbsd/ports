# $OpenBSD: Makefile,v 1.4 1999/09/06 18:17:27 brad Exp $

DISTNAME=	mp3info-0.2.16
CATEGORIES=	audio
MASTER_SITES=	ftp://bimbo.hive.no/pub/mp3info/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/sound/editors

MAINTAINER=	angelos@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mp3info ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mp3info.1 ${PREFIX}/man/man1
	@${MKDIR} ${PREFIX}/share/doc/mp3info
.for file in ChangeLog README
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/mp3info
.endfor

.include <bsd.port.mk>
