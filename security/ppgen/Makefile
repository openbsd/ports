# $OpenBSD: Makefile,v 1.2 2000/10/22 16:21:18 espie Exp $

DISTNAME=	ppgen-1.0
CATEGORIES=	security
NEED_VERSION=	1.319

MAINTAINER=	Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

DIST_SUBDIR=	${DISTNAME}
MASTER_SITES=	ftp://ftp.cerias.purdue.edu/pub/tools/unix/sysutils/ppgen/
DISTFILES=	${DISTNAME}.tar.gz en.gz
EXTRACT_ONLY=	${DISTNAME}.tar.gz

CONFIGURE_STYLE=gnu old dest

post-install:
	mkdir -p ${PREFIX}/share/ppgen
	gzip -dc ${FULLDISTDIR}/en.gz > ${PREFIX}/share/ppgen/en

.include <bsd.port.mk>

