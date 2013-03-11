# $OpenBSD: Makefile,v 1.26 2013/03/11 11:41:26 espie Exp $

COMMENT =	extendable encryption program that supports many ciphers

DISTNAME =		mcrypt-2.6.8
REVISION =		2
CATEGORIES =		security

HOMEPAGE =		http://mcrypt.sf.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ltdl mcrypt mhash z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mcrypt/}

USE_LIBTOOL =		Yes
USE_GMAKE =		Yes
USE_GROFF =		Yes
MODULES =		devel/gettext
LIB_DEPENDS =		security/libmcrypt \
			security/mhash \
			devel/libtool,-ltdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += 	${CONFIGURE_SHARED}
CONFIGURE_ARGS += 	--enable-static --with-catgets 
CONFIGURE_ENV +=  	CPPFLAGS="-I${LOCALBASE}/include" \
                	LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv -lltdl"

.include <bsd.port.mk>
