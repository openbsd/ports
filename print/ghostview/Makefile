# OpenBSD makefile for:	ghostview
# Version required:	1.5
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 2000/04/09 17:37:51 espie Exp $
#

DISTNAME=	ghostview-1.5
CATEGORIES=	print
FAKE=No
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= ghostview

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_IMAKE=	yes

post-install:
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
