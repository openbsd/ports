# OpenBSD makefile for: 	     sattrack
# Version required:                  3.1.6
# Date created:                      28 Apr 1998
# Whom:                              Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/04/29 03:25:30 angelos Exp $
#

DISTNAME=          sattrack-3.1.6
CATEGORIES=        astro
MASTER_SITES=      ${MASTER_SITE_LOCAL}

MAINTAINER=        angelos@openbsd.org

WRKSRC=            ${WRKDIR}/SatTrack-3.1.6/src

post-install:
	@${CAT} ${PKGDIR}/MESSAGE

.include <bsd.port.mk>
