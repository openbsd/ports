# OpenBSD makefile for:	xbattle
# Version required:     15.4.1
# Date created:         May 19 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 00:02:55 angelos Exp $
#

DISTNAME=	xbattle-5.4.1
CATEGORIES=	games
MASTER_SITES=	ftp://cns-ftp.bu.edu/pub/xbattle/	\
		ftp://www.tiac.net/users/lesher/xbattle/

MAINTAINER=	angelos@openbsd.org

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
