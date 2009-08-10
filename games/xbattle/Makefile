# $OpenBSD: Makefile,v 1.19 2009/08/10 06:31:43 kili Exp $

COMMENT=	concurrent multi-player battle strategy game

DISTNAME=	xbattle-5.4.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games

MASTER_SITES=	ftp://cns-ftp.bu.edu/pub/xbattle/

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xbattle
	${INSTALL_DATA_DIR} ${PREFIX}/share/xbattle
	@cp $(WRKSRC)/tutorial* $(PREFIX)/share/doc/xbattle/ 
	@cp $(WRKSRC)/README $(PREFIX)/share/doc/xbattle/ 
	@cp -R $(WRKSRC)/xbas $(PREFIX)/share/xbattle/
	@cp -R $(WRKSRC)/xbos $(PREFIX)/share/xbattle/
	@cp -R $(WRKSRC)/xbts $(PREFIX)/share/xbattle/
	@${CHMOD} 755 $(PREFIX)/share/doc/xbattle
	@${CHMOD} 644 $(PREFIX)/share/doc/xbattle/*
	@${CHMOD} 755 ${PREFIX}/share/xbattle
	@${CHMOD} 755 ${PREFIX}/share/xbattle/xbas
	@${CHMOD} 644 ${PREFIX}/share/xbattle/xbas/*
	@${CHMOD} 755 ${PREFIX}/share/xbattle/xbos
	@${CHMOD} 644 ${PREFIX}/share/xbattle/xbos/*
	@${CHMOD} 755 ${PREFIX}/share/xbattle/xbts
	@${CHMOD} 644 ${PREFIX}/share/xbattle/xbts/*

.include <bsd.port.mk>
