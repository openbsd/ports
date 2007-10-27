# $OpenBSD: Makefile,v 1.17 2007/10/27 13:32:05 ajacoutot Exp $

COMMENT=	Mahjongg game for X11

DISTNAME=       xmj
PKGNAME=	xmj-1.0p0
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_BACKUP}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext c

CONFIGURE_STYLE=imake noman
USE_X11=	Yes
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,_height=,_height ,g;' \
		-e 's,_width=,_width ,g' $i \
		${WRKSRC}/tiles/c*

.include <bsd.port.mk>
