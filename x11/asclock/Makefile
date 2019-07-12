# $OpenBSD: Makefile,v 1.24 2019/07/12 20:51:08 sthen Exp $

COMMENT=	afterstep clock with some language extensions

DISTNAME=	asclock-2.0.12
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_AFTERSTEP:=apps/asclock/} \
		http://www.tigr.net/afterstep/download/asclock/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xext Xpm Xau Xdmcp c

THEMES=		Freeamp Newstone Orb Stone beats classic penguin shaped
CLASSICS=	beats classic shaped
LANGUAGES=	english german portuguese dutch norwegian italian \
		swedish spanish hungarian breton french czech russian \
		ukrainian slovene indonesian danish hebrew japanese

FLAVORS=	${THEMES:L} ${LANGUAGES}
FLAVOR?=	classic english

CONFIGURE_STYLE= imake

pre-configure:
	@THEMES='${THEMES}' CLASSICS='${CLASSICS}' LANGUAGES='${LANGUAGES}' \
	    WRKSRC=${WRKSRC} FLAVOR='${FLAVOR}' \
	    perl ${FILESDIR}/configure conf

NO_TEST=	Yes

.include <bsd.port.mk>
