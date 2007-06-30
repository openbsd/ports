# $OpenBSD: Makefile,v 1.1.1.1 2007/06/30 14:17:53 mbalmer Exp $

COMMENT=		"Virtual desktop manager"
DISTNAME=		vdesk-1.2
PKGNAME=		${DISTNAME}

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
