# $OpenBSD: Makefile,v 1.9 2002/03/21 21:25:55 espie Exp $

COMMENT=	"afterstep clock with some language extensions"

DISTNAME=	asclock-2.0.12
CATEGORIES=	x11
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.afterstep.org/apps/asclock/ \
		ftp://fuf.sh.cvut.cz/pub/AfterStep/apps/asclock/ \
		http://www.tigr.net/afterstep/download/asclock/

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

pre-fetch:
	@THEMES='${THEMES}' CLASSICS='${CLASSICS}' LANGUAGES='${LANGUAGES}' \
	     FLAVOR='${FLAVOR}' ${FILESDIR}/configure chk

pre-configure:
	@THEMES='${THEMES}' CLASSICS='${CLASSICS}' LANGUAGES='${LANGUAGES}' \
	     WRKSRC=${WRKSRC} FLAVOR='${FLAVOR}' ${FILESDIR}/configure conf

.include <bsd.port.mk>
