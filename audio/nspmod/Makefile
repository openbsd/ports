# $OpenBSD: Makefile,v 1.12 2002/03/21 20:35:42 espie Exp $

COMMENT=	"MOD/S3M/MTM tracker that does its own DSP"
DISTNAME=	nspmod-0.1
CATEGORIES=	audio
NEED_VERSION=	1.515
MASTER_SITES=	http://www.jeton.or.jp/users/toru/www/orgsoft/nspmod/ \
		${MASTER_SITE_SUNSITE}/
MASTER_SITE_SUBDIR= apps/sound/players

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nspmod ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nspmod.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
