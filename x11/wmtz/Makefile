# $OpenBSD: Makefile,v 1.19 2013/10/11 23:51:55 naddy Exp $

COMMENT=		wm-dockapp; displays the time in different time zones

DISTNAME=		wmtz-0.7
REVISION=		1
CATEGORIES=     	x11 x11/windowmaker

HOMEPAGE=		http://www.geocities.com/jl1n/wmtz/wmtz.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://www.geocities.com/jl1n/wmtz/ \
			http://web.cs.mun.ca/~gstarkes/wmaker/dockapps/files/

NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmtz

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmtz.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmtz
	${INSTALL_DATA} ${WRKSRC}/wmtzrc ${PREFIX}/share/examples/wmtz/sample.wmtzrc

.include <bsd.port.mk>
