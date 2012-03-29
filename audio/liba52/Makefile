#$OpenBSD: Makefile,v 1.17 2012/03/29 13:38:13 sthen Exp $

CATEGORIES =	audio

COMMENT =	AC-3 decoding library
DISTNAME =	a52dec-0.7.4
PKGNAME =	liba52-0.7.4
REVISION =	2
MASTER_SITES =	http://liba52.sourceforge.net/files/
HOMEPAGE =	http://liba52.sourceforge.net/
SHARED_LIBS +=	a52                  0.0      # .0.0

MAINTAINER =	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/autotools
SEPARATE_BUILD =	Yes
USE_LIBTOOL =		Yes
USE_GROFF =	Yes

# GPL
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes

WANTLIB =		c m ossaudio

.include <bsd.port.mk>
