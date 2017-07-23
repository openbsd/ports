# $OpenBSD: Makefile,v 1.11 2017/07/23 09:26:29 espie Exp $

COMMENT =		software able to hide data in various kind of files

DISTNAME =		steghide-0.5.1
REVISION =		2
CATEGORIES =		security
HOMEPAGE =		http://steghide.sf.net/

MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=steghide/}

LIB_DEPENDS =		security/libmcrypt \
			security/mhash \
			graphics/jpeg
WANTLIB =		c jpeg m mhash mcrypt ${COMPILER_LIBCXX} z
MODULES =		devel/gettext
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"


.include <bsd.port.mk>
