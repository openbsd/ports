# $OpenBSD: Makefile,v 1.20 2010/10/24 21:19:03 ajacoutot Exp $

COMMENT=	Mahjongg game for X11

DISTNAME=       xmj
PKGNAME=	xmj-1.0p2
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_BACKUP}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c pthread-stubs xcb

CONFIGURE_STYLE=imake noman
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,_height=,_height ,g;' \
		-e 's,_width=,_width ,g' $i \
		${WRKSRC}/tiles/c*

.include <bsd.port.mk>
