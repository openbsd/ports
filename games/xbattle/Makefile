# $OpenBSD: Makefile,v 1.3 1999/01/14 01:59:02 angelos Exp $
#

DISTNAME=	xbattle-5.4.1
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://cns-ftp.bu.edu/pub/xbattle/

USE_IMAKE=	yes

post-install:
	$(MKDIR) $(PREFIX)/etc/xbattle
	chmod 755 ${PREFIX}/etc/xbattle
	$(CP) -R $(WRKSRC)/xbos $(PREFIX)/etc/xbattle/
	chmod 755 ${PREFIX}/etc/xbattle/xbos
	chmod 644 ${PREFIX}/etc/xbattle/xbos/*
	$(CP) -R $(WRKSRC)/xbts $(PREFIX)/etc/xbattle/
	chmod 755 ${PREFIX}/etc/xbattle/xbts
	chmod 644 ${PREFIX}/etc/xbattle/xbts/*
	$(CP) -R $(WRKSRC)/xbas $(PREFIX)/etc/xbattle/
	chmod 755 ${PREFIX}/etc/xbattle/xbas
	chmod 644 ${PREFIX}/etc/xbattle/xbas/*
.if !defined(NOPORTDOCS)
	$(MKDIR) $(PREFIX)/share/doc/xbattle
	chmod 755 $(PREFIX)/share/doc/xbattle
	$(CP) $(WRKSRC)/tutorial* $(PREFIX)/share/doc/xbattle/ 
	$(CP) $(WRKSRC)/README $(PREFIX)/share/doc/xbattle/ 
	chmod 644 $(PREFIX)/share/doc/xbattle/*
.endif

.include <bsd.port.mk>
