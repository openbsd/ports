# $OpenBSD: Makefile,v 1.14 2017/11/21 00:13:03 naddy Exp $

COMMENT =		software able to hide data in various kind of files

DISTNAME =		steghide-0.5.1
REVISION =		4
CATEGORIES =		security
HOMEPAGE =		http://steghide.sf.net/

MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=steghide/}

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/gettext \
			security/libmcrypt \
			security/mhash \
			graphics/jpeg
WANTLIB =		c iconv intl jpeg m mhash mcrypt ${COMPILER_LIBCXX} z
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"


.include <bsd.port.mk>
