# $OpenBSD: Makefile,v 1.16 2002/03/21 21:09:17 espie Exp $

COMMENT=	"MIME implementation"

DISTNAME=	mm2.7
PKGNAME=	metamail-2.7
CATEGORIES=	mail
NEED_VERSION=	1.515
MASTER_SITES=	ftp://thumper.bellcore.com/pub/nsb/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/${DISTNAME}/src

pre-install:
	@cd ${WRKSRC}/bin && rm -f *.orig

.include <bsd.port.mk>
