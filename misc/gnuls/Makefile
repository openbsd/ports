# New ports collection makefile for:	Linux-style colorized `ls'
# Version required:			3.12.0.2 (GNU fileutils 3.12)
# Date created:				06 January 1996
# Whom:					bmc@WillsCreek.COM
#
# $FreeBSD: Makefile,v 1.7 1997/09/18 17:40:24 fenner Exp $
# $OpenBSD: Makefile,v 1.2 1999/03/07 01:38:59 brad Exp $
#

DISTNAME=	fileutils-3.16
PKGNAME=	gnuls-3.16
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= fileutils

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes

post-install:
	@${LN} -fs gnuls.1 ${PREFIX}/man/man1/linuxls.1
	@${LN} -fs gnuls.1 ${PREFIX}/man/man1/vdir.1
	@${LN} -fs gnuls.1 ${PREFIX}/man/man1/dir.1

.include <bsd.port.mk>
