COMMENT=	change background image with GkrellM2

DISTNAME=	gkrellmbgchg2-0.1.11
CATEGORIES=	x11
REVISION=	1

HOMEPAGE=	http://www.bender-suhl.de/stefan/english/comp/gkrellmbgchg.html

MASTER_SITES=	http://www.bender-suhl.de/stefan/comp/sources/ \
		http://www.bender-suhl.de/stefan/comp/sources/old/

PLUGIN=		${WRKSRC}/gkrellmbgchg.so

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
