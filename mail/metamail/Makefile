# $OpenBSD: Makefile,v 1.27 2012/10/29 15:19:03 espie Exp $

COMMENT=	MIME implementation

DISTNAME=	mm2.7
PKGNAME=	metamail-2.7
REVISION=	3
CATEGORIES=	mail

MASTER_SITES=	http://www.guppylake.com/~nsb/metamail/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c termcap
# mkfontdir & friends
USE_X11 =	Yes

WRKSRC=		${WRKDIST}/src
MAKE_FLAGS=	CC="${CC}"
NO_REGRESS=	Yes

post-configure:
	@${SUBST_CMD} ${WRKSRC}/config.h

pre-install:
	@cd ${WRKSRC}/bin && rm -f *.orig

.include <bsd.port.mk>
