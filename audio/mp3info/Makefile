# $OpenBSD: Makefile,v 1.14 2002/12/23 00:37:49 pvalchev Exp $

COMMENT=	"MP3 information tool"
DISTNAME=	mp3info-0.2.16
CATEGORIES=	audio
MASTER_SITES=	ftp://bimbo.hive.no/pub/mp3info/ \
		${MASTER_SITE_SUNSITE:=apps/sound/editors/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mp3info ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mp3info.1 ${PREFIX}/man/man1
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mp3info
	cd ${WRKSRC} && ${INSTALL_DATA} ChangeLog README \
	    ${PREFIX}/share/doc/mp3info

.include <bsd.port.mk>
