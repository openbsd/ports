# $OpenBSD: Makefile,v 1.4 1999/10/01 16:02:00 brad Exp $

DISTNAME=	xbattle-5.4.1
CATEGORIES=	games
MASTER_SITES=	ftp://cns-ftp.bu.edu/pub/xbattle/

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes

post-install:
	@${MKDIR} $(PREFIX)/share/doc/xbattle
	@${MKDIR} $(PREFIX)/share/xbattle
	@${CP} $(WRKSRC)/tutorial* $(PREFIX)/share/doc/xbattle/ 
	@${CP} $(WRKSRC)/README $(PREFIX)/share/doc/xbattle/ 
	@${CP} -R $(WRKSRC)/xbas $(PREFIX)/share/xbattle/
	@${CP} -R $(WRKSRC)/xbos $(PREFIX)/share/xbattle/
	@${CP} -R $(WRKSRC)/xbts $(PREFIX)/share/xbattle/
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
