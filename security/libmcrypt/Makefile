# $OpenBSD: Makefile,v 1.21 2009/05/29 19:53:11 benoit Exp $

COMMENT =		interface to access block/stream encryption algorithms

DISTNAME =		libmcrypt-2.5.8
CATEGORIES =		security
SHARED_LIBS =		mcrypt	8.7	# .8.7
MODGNU_SHARED_LIBS =	mcrypt	''
LIBmcrypt_ALIAS =	realmcrypt

HOMEPAGE =		http://mcrypt.sf.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mcrypt/}

LIB_DEPENDS =		mhash.>=2::security/mhash \
			ltdl.>=1::devel/libtool,-ltdl

USE_LIBTOOL =		Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
CONFIGURE_ARGS +=	--enable-static

.include <bsd.port.mk>
