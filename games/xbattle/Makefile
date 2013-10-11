# $OpenBSD: Makefile,v 1.25 2013/10/11 20:39:24 naddy Exp $

COMMENT=	concurrent multi-player battle strategy game

DISTNAME=	xbattle-5.4.1
REVISION =	2
CATEGORIES=	games

MASTER_SITES=	ftp://cns-ftp.bu.edu/pub/xbattle/

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

CONFIGURE_STYLE=imake
NO_TEST=	Yes
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xbattle
	${INSTALL_DATA_DIR} ${PREFIX}/share/xbattle
	@cp $(WRKSRC)/tutorial* $(PREFIX)/share/doc/xbattle/ 
	@cp $(WRKSRC)/README $(PREFIX)/share/doc/xbattle/ 
	@cp -R $(WRKSRC)/xbas $(PREFIX)/share/xbattle/
	@cp -R $(WRKSRC)/xbos $(PREFIX)/share/xbattle/
	@cp -R $(WRKSRC)/xbts $(PREFIX)/share/xbattle/
	@chmod 755 $(PREFIX)/share/doc/xbattle
	@chmod 644 $(PREFIX)/share/doc/xbattle/*
	@chmod 755 ${PREFIX}/share/xbattle
	@chmod 755 ${PREFIX}/share/xbattle/xbas
	@chmod 644 ${PREFIX}/share/xbattle/xbas/*
	@chmod 755 ${PREFIX}/share/xbattle/xbos
	@chmod 644 ${PREFIX}/share/xbattle/xbos/*
	@chmod 755 ${PREFIX}/share/xbattle/xbts
	@chmod 644 ${PREFIX}/share/xbattle/xbts/*

.include <bsd.port.mk>
