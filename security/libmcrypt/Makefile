# $OpenBSD: Makefile,v 1.26 2013/03/21 08:48:53 ajacoutot Exp $

COMMENT =		interface to access block/stream encryption algorithms

DISTNAME =		libmcrypt-2.5.8
REVISION =		1
CATEGORIES =		security
SHARED_LIBS =		mcrypt	8.7	# .8.7
MODGNU_SHARED_LIBS =	mcrypt	''
LIBmcrypt_ALIAS =	realmcrypt

HOMEPAGE =		http://mcrypt.sf.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mcrypt/}

USE_GROFF =		Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
CONFIGURE_ARGS +=	--enable-static

.include <bsd.port.mk>
