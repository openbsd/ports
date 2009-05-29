# $OpenBSD: Makefile,v 1.20 2009/05/29 20:01:07 benoit Exp $

COMMENT =	extendable encryption program that supports many ciphers

DISTNAME =		mcrypt-2.6.8
CATEGORIES =     	security

HOMEPAGE =		http://mcrypt.sf.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
WANTLIB =		c mhash z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mcrypt/}

USE_LIBTOOL =		Yes
USE_GMAKE =		Yes
MODULES =		devel/gettext
LIB_DEPENDS =		mcrypt.>=6::security/libmcrypt \
			ltdl.>=1::devel/libtool,-ltdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += 	${CONFIGURE_SHARED}
CONFIGURE_ARGS += 	--enable-static --with-catgets 
CONFIGURE_ENV +=  	CPPFLAGS="-I${LOCALBASE}/include" \
                	LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv -lltdl"

.include <bsd.port.mk>
