# $OpenBSD: Makefile,v 1.12 2003/10/08 17:13:15 sturm Exp $

COMMENT=	"afterstep clock with some language extensions"

DISTNAME=	asclock-2.0.12
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.afterstep.org/apps/asclock/ \
		ftp://fuf.sh.cvut.cz/pub/AfterStep/apps/asclock/ \
		http://www.tigr.net/afterstep/download/asclock/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

THEMES=		Freeamp Newstone Orb Stone beats classic penguin shaped
CLASSICS=	beats classic shaped
LANGUAGES=	english german portuguese dutch norwegian italian \
		swedish spanish hungarian breton french czech russian \
		ukrainian slovene indonesian danish hebrew japanese

FLAVORS=	${THEMES:L} ${LANGUAGES}
FLAVOR?=	classic english

CONFIGURE_STYLE= imake
USE_X11=	Yes

pre-configure:
	@THEMES='${THEMES}' CLASSICS='${CLASSICS}' LANGUAGES='${LANGUAGES}' \
	     WRKSRC=${WRKSRC} FLAVOR='${FLAVOR}' ${FILESDIR}/configure conf

NO_REGRESS=	Yes

.include <bsd.port.mk>
