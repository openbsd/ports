# OpenBSD makefile for:	ghostview
# Version required:	1.5
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1999/03/07 01:39:00 brad Exp $
#

DISTNAME=	ghostview-1.5
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= ghostview

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes

post-install:
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
