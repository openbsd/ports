# $OpenBSD: Makefile,v 1.5 2000/02/11 01:10:03 espie Exp $

DISTNAME=	xbattle-5.4.1
CATEGORIES=	games
MASTER_SITES=	ftp://cns-ftp.bu.edu/pub/xbattle/

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes

post-install:
	@mkdir -p $(PREFIX)/share/doc/xbattle
	@mkdir -p $(PREFIX)/share/xbattle
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
