# OpenBSD makefile for: ngrep
# Version required:     1.26
# Date created:         1999-Jun-23
# Whom:                 dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.9 2000/04/14 14:51:49 dugsong Exp $

DISTNAME=	ngrep-1.37

CATEGORIES=     net
NEED_VERSION=	1.191

MASTER_SITES=	http://www.packetfactory.net/Projects/ngrep/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix='$$(DESTDIR)$(PREFIX)'

FAKE=		yes

WRKDIST=	${WRKDIR}/ngrep

ALL_TARGET=	ngrep

.include <bsd.port.mk>
