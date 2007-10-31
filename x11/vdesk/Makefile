# $OpenBSD: Makefile,v 1.4 2007/10/31 14:24:54 jasper Exp $

COMMENT=		virtual desktop manager
DISTNAME=		vdesk-1.2
PKGNAME=		${DISTNAME}p1

CATEGORIES=		x11
MASTER_SITES=		http://offog.org/files/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

HOMEPAGE=		http://offog.org/code/vdesk.html

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

WANTLIB+=		ICE SM X11 c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vdesk
	cp ${WRKSRC}/README ${WRKSRC}/AUTHORS ${WRKSRC}/COPYING \
	    ${PREFIX}/share/doc/vdesk

.include <bsd.port.mk>
