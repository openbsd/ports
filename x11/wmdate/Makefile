# $OpenBSD: Makefile,v 1.12 2002/09/17 14:35:04 wilfried Exp $

COMMENT=		'wm-dockapp; shows the current date'

DISTNAME=		wmdate-0.7
CATEGORIES=		x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		dockapp::devel/libdockapp

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake noman

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmdate
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wmdate

.include <bsd.port.mk>
