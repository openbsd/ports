# $OpenBSD: Makefile,v 1.5 1999/09/06 16:26:49 brad Exp $

DISTNAME=	mm2.7
PKGNAME=	metamail-2.7
CATEGORIES=	mail
MASTER_SITES=	ftp://thumper.bellcore.com/pub/nsb/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	marc@openbsd.org

WRKSRC=		${WRKDIR}/${DISTNAME}/src

pre-install:
	@(cd ${WRKSRC}/bin && ${RM} -f *.orig)

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
