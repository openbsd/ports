# $OpenBSD: Makefile,v 1.25 2013/03/11 11:41:25 espie Exp $

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

USE_LIBTOOL =		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
CONFIGURE_ARGS +=	--enable-static

.include <bsd.port.mk>
