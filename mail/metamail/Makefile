# $OpenBSD: Makefile,v 1.9 2000/02/16 10:52:11 espie Exp $

DISTNAME=	mm2.7
PKGNAME=	metamail-2.7
CATEGORIES=	mail
MASTER_SITES=	ftp://thumper.bellcore.com/pub/nsb/
EXTRACT_SUFX=	.tar.Z
NEED_VERSION=	1.191

MAINTAINER=	marc@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=		${WRKDIR}/${DISTNAME}/src

pre-install:
	@(cd ${WRKSRC}/bin && rm -f *.orig)

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
