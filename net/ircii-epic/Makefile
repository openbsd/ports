# $OpenBSD: Makefile,v 1.3 1999/03/30 06:18:31 brad Exp $

DISTNAME=	ircii2.8.2-EPIC3.004
PKGNAME=	ircii-2.8.2-epic3.004
CATEGORIES=	net
MASTER_SITES=	http://www.min.net/~douglas/ircii/
DISTFILES=	ircii2.8.2-EPIC3.004.tar.gz ircii2.8.2-EPIC3.help.tar.gz

MAINTAINER=	brad@openbsd.org

EXTRACT_ONLY=	ircii2.8.2-EPIC3.004.tar.gz
GNU_CONFIGURE=	yes
WRKSRC=	${WRKDIR}/ircii-EPIC3.004

post-install:
	(cd $(PREFIX)/lib/irc && tar xzf $(DISTDIR)/ircii2.8.2-EPIC3.help.tar.gz)
	# Distfile has wrong permissions for...
	chmod 644 $(PREFIX)/lib/irc/help/ON/SILENCE

.include <bsd.port.mk>
