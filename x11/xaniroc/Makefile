# OpenBSD makefile for:   xaniroc
# Version required:    0.3
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/19 05:43:53 angelos Exp $
#

DISTNAME=	xaniroc
PKGNAME=	xaniroc-1.02
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.freebird.org/unixware/freebird/x11/utils/ \
		ftp://sunsite.cnlab-switch.ch/mirror/novell/freebird/x11/utils/
EXTRACT_SUFX=	.src.tar.Z

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes

post-extract:
	${MV} ${WRKSRC}/manpage.1 ${WRKSRC}/xaniroc.man

.include <bsd.port.mk>
