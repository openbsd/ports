# OpenBSD makefile for:   guavac
# Version required:    1.0
# Date created:        24 December 1997
# Whom:                Todd T. Fries <toddf@acm.org>
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/27 06:13:28 todd Exp $
#

DISTNAME=	guavac-1.0
CATEGORIES=	lang
MASTER_SITES=	ftp://summit.stanford.edu/pub/guavac/ \
		ftp://ftp.Germany.EU.net/pub/programming/languages/java/guavac/\
		ftp://sunsite.mff.cuni.cz/Languages/Java/guavac/

MAINTAINER=	toddf@acm.org

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
MAN1=		guavac.1
STRIP=

CONFIGURE_ENV=	CFLAGS=-O2

post-install:
	@strip ${PREFIX}/bin/guavac ${PREFIX}/bin/guavad

.include <bsd.port.mk>
