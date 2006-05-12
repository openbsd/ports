# $OpenBSD: Makefile,v 1.1 2006/05/12 01:31:43 jolan Exp $

COMMENT=	"creative voip blaster driver/software"
DISTNAME=	fobbit-0.61
CATEGORIES=	telephony
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fobbit/}

HOMEPAGE=	http://www.fobbit.org/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

WRKSRC=	${WRKDIST}/src

WANTLIB=c

pre-configure:
	@perl -pi -e 's|_PREFIX_|${PREFIX}|g;' ${WRKSRC}/ini.c ${WRKSRC}/vb.ini

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fobbit
	${INSTALL_DATA_DIR} ${PREFIX}/share/fobbit/sounds
	${INSTALL_PROGRAM} ${WRKSRC}/vb ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/vb.ini ${PREFIX}/share/examples/fobbit
	${INSTALL_DATA} ${WRKDIST}/sounds/*.723 ${PREFIX}/share/fobbit/sounds

.include <bsd.port.mk>
