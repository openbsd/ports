# OpenBSD makefile for:	ghostview
# Version required:	1.5
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/03 04:32:18 angelos Exp $
#

DISTNAME=	ghostview-1.5
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes

post-install:
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
