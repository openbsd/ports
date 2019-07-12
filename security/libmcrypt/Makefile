# $OpenBSD: Makefile,v 1.30 2019/07/12 20:49:04 sthen Exp $

COMMENT =		interface to access block/stream encryption algorithms

DISTNAME =		libmcrypt-2.5.8
REVISION =		2
CATEGORIES =		security
SHARED_LIBS =		mcrypt	8.7	# .8.7
MODGNU_SHARED_LIBS =	mcrypt	''
LIBmcrypt_ALIAS =	realmcrypt

HOMEPAGE =		http://mcrypt.sf.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mcrypt/}

CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS +=	--enable-static

.include <bsd.port.mk>
