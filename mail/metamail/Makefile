# $OpenBSD: Makefile,v 1.12 2000/03/27 09:03:24 kevlo Exp $

DISTNAME=	mm2.7
PKGNAME=	metamail-2.7
CATEGORIES=	mail
NEED_VERSION=	1.191
MASTER_SITES=	ftp://thumper.bellcore.com/pub/nsb/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=			Yes
WRKDIST=		${WRKDIR}/${DISTNAME}/src

pre-install:
	@(cd ${WRKSRC}/bin && rm -f *.orig)

post-install:
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
