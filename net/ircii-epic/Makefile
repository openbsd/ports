# $OpenBSD: Makefile,v 1.5 2000/03/22 23:27:55 turan Exp $

DISTNAME=	ircii2.8.2-EPIC3.004
PKGNAME=	ircii-2.8.2-epic3.004
CATEGORIES=	net
MASTER_SITES=	http://www.min.net/~douglas/ircii/
DISTFILES=	ircii2.8.2-EPIC3.004.tar.gz ircii2.8.2-EPIC3.help.tar.gz
NEED_VERSION=	1.191

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_ONLY=	ircii2.8.2-EPIC3.004.tar.gz
GNU_CONFIGURE=	yes
WRKDIST=	${WRKDIR}/ircii-EPIC3.004

post-install:
	(cd $(PREFIX)/lib/irc && tar xzf $(DISTDIR)/ircii2.8.2-EPIC3.help.tar.gz)
	# Distfile has wrong permissions for...
	chmod 644 $(PREFIX)/lib/irc/help/ON/SILENCE

.include <bsd.port.mk>
