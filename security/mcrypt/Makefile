# $OpenBSD: Makefile,v 1.32 2017/11/01 17:07:25 naddy Exp $

COMMENT =	extendable encryption program that supports many ciphers

DISTNAME =		mcrypt-2.6.8
REVISION =		5
CATEGORIES =		security

HOMEPAGE =		http://mcrypt.sf.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c iconv intl ltdl mcrypt mhash z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mcrypt/}

USE_GMAKE =		Yes
LIB_DEPENDS =		security/libmcrypt \
			security/mhash \
			devel/gettext \
			devel/libtool,-ltdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += 	--enable-static --with-catgets 
CONFIGURE_ENV +=  	CPPFLAGS="-I${LOCALBASE}/include" \
                	LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv -lltdl"

.include <bsd.port.mk>
