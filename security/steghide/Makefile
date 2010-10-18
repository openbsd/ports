# $OpenBSD: Makefile,v 1.3 2010/10/18 21:41:47 espie Exp $

COMMENT =		software able to hide data in various kind of files

DISTNAME =		steghide-0.5.1
REVISION =		0
CATEGORIES =		security
HOMEPAGE =		http://steghide.sf.net/

MAINTAINER =		Giovanni Bechis <g.bechis@snb.it>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=steghide/}

LIB_DEPENDS =		::security/libmcrypt \
			::security/mhash \
			::graphics/jpeg
WANTLIB =		c jpeg m mhash mcrypt stdc++ z
MODULES =		devel/gettext
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

USE_LIBTOOL =		Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
