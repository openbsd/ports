# OpenBSD makefile for:	tkinfo
# Version required:     1.8
# Date created:         May 20 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.13 2002/06/09 05:36:59 wilfried Exp $
#

COMMENT=	"Tk script to read GNU info files and display them"

DISTNAME=	tkinfo-2.5
CATEGORIES=	misc 
NEED_VERSION=	1.496
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://math-www.uni-paderborn.de/~axel/tkinfo/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:tk-8.3.*:x11/tk/8.3

NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkinfo ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tkinfo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
