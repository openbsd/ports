# Makefile for:		hping
# Version required:	2.0b49
# Date created:		Oct 28 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.8 2000/04/14 14:13:18 dugsong Exp $

PKGNAME=	hping-2.0b53

DISTNAME=	hping2-beta53

CATEGORIES=	net
NEED_VERSION=	1.191

MASTER_SITES=	http://www.kyuzz.org/antirez/hping2-src/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

HAS_CONFIGURE=	yes

FAKE=		yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hping2 ${PREFIX}/sbin/hping

.include <bsd.port.mk>
