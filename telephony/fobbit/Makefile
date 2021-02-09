# $OpenBSD: Makefile,v 1.6 2021/02/09 22:59:15 naddy Exp $

COMMENT=	Creative VoIP Blaster driver/software
DISTNAME=	fobbit-0.61
REVISION=	0
CATEGORIES=	telephony
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fobbit/}

HOMEPAGE=	http://fobbit.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes
USE_GMAKE=	Yes

WRKSRC=	${WRKDIST}/src

WANTLIB=c

# Fix DOS line-endings in files needing patches
pre-patch:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' *.[ch] vb.ini

pre-configure:
	@sed -i 's|_PREFIX_|${PREFIX}|g;' ${WRKSRC}/ini.c ${WRKSRC}/vb.ini

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fobbit
	${INSTALL_DATA_DIR} ${PREFIX}/share/fobbit/sounds
	${INSTALL_PROGRAM} ${WRKSRC}/vb ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/vb.ini ${PREFIX}/share/examples/fobbit
	${INSTALL_DATA} ${WRKDIST}/sounds/*.723 ${PREFIX}/share/fobbit/sounds

.include <bsd.port.mk>
