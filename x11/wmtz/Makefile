# $OpenBSD: Makefile,v 1.11 2006/07/20 04:43:28 steven Exp $

COMMENT=		'wm-dockapp; displays the time in different time zones'

DISTNAME=		wmtz-0.7
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	x11 x11/windowmaker

HOMEPAGE=		http://www.geocities.com/jl1n/wmtz/wmtz.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://www.geocities.com/jl1n/wmtz/ \
			http://web.cs.mun.ca/~gstarkes/wmaker/dockapps/files/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmtz

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmtz.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmtz
	${INSTALL_DATA} ${WRKSRC}/wmtzrc ${PREFIX}/share/examples/wmtz/sample.wmtzrc

.include <bsd.port.mk>
