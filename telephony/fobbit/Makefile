COMMENT=	Creative VoIP Blaster driver/software
DISTNAME=	fobbit-0.61
REVISION=	1
CATEGORIES=	telephony
SITES=		${SITE_SOURCEFORGE:=fobbit/}

HOMEPAGE=	https://fobbit.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes
USE_GMAKE=	Yes

WRKSRC=	${WRKDIST}/src

WANTLIB=c

FIX_CRLF_FILES=	src/*.[ch] src/vb.ini

pre-configure:
	@sed -i 's|_PREFIX_|${PREFIX}|g;' ${WRKSRC}/ini.c ${WRKSRC}/vb.ini

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fobbit
	${INSTALL_DATA_DIR} ${PREFIX}/share/fobbit/sounds
	${INSTALL_PROGRAM} ${WRKSRC}/vb ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/vb.ini ${PREFIX}/share/examples/fobbit
	${INSTALL_DATA} ${WRKDIST}/sounds/*.723 ${PREFIX}/share/fobbit/sounds

.include <bsd.port.mk>
