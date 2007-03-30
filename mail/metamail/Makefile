# $OpenBSD: Makefile,v 1.21 2007/03/30 20:58:55 martynas Exp $

COMMENT=	"MIME implementation"

DISTNAME=	mm2.7
PKGNAME=	metamail-2.7p0
CATEGORIES=	mail

MASTER_SITES=	http://www.guppylake.com/~nsb/metamail/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap

WRKDIST=	${WRKDIR}/${DISTNAME}/src

NO_REGRESS=	Yes

post-configure:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/config.h

pre-install:
	@cd ${WRKSRC}/bin && rm -f *.orig

.include <bsd.port.mk>
