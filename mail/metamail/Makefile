# $OpenBSD: Makefile,v 1.17 2002/10/27 17:21:39 naddy Exp $

COMMENT=	"MIME implementation"

DISTNAME=	mm2.7
PKGNAME=	metamail-2.7
CATEGORIES=	mail

MASTER_SITES=	ftp://thumper.bellcore.com/pub/nsb/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/src

NO_REGRESS=	Yes

pre-install:
	@cd ${WRKSRC}/bin && rm -f *.orig

.include <bsd.port.mk>
