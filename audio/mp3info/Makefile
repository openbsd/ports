# $OpenBSD: Makefile,v 1.5 2000/01/03 05:45:07 fgsch Exp $

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
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mp3info
	cd ${WRKSRC} && ${INSTALL_DATA} ChangeLog README \
	    ${PREFIX}/share/doc/mp3info

.include <bsd.port.mk>
