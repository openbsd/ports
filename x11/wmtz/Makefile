# $OpenBSD: Makefile,v 1.17 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; displays the time in different time zones

DISTNAME=		wmtz-0.7
REVISION=		1
CATEGORIES=     	x11 x11/windowmaker

HOMEPAGE=		http://www.geocities.com/jl1n/wmtz/wmtz.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://www.geocities.com/jl1n/wmtz/ \
			http://web.cs.mun.ca/~gstarkes/wmaker/dockapps/files/

USE_GROFF =		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmtz

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmtz.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmtz
	${INSTALL_DATA} ${WRKSRC}/wmtzrc ${PREFIX}/share/examples/wmtz/sample.wmtzrc

.include <bsd.port.mk>
