# $OpenBSD: Makefile,v 1.6 2000/02/11 00:37:29 espie Exp $

DISTNAME=	mm2.7
PKGNAME=	metamail-2.7
CATEGORIES=	mail
MASTER_SITES=	ftp://thumper.bellcore.com/pub/nsb/
EXTRACT_SUFX=	.tar.Z
NEED_VERSION=	1.191

MAINTAINER=	marc@openbsd.org

WRKDIST=		${WRKDIR}/${DISTNAME}/src

pre-install:
	@(cd ${WRKSRC}/bin && ${RM} -f *.orig)

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
