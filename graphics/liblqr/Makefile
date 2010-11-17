# $OpenBSD: Makefile,v 1.3 2010/11/17 08:05:14 espie Exp $

COMMENT = 			seam-carving smart rescale library
CATEGORIES =			graphics devel

HOMEPAGE = 			http://liblqr.wikidot.com/
DISTNAME = 			liblqr-1-0.1.0-5
PKGNAME = 			liblqr-0.1.0.5
WRKDIST =			${WRKDIR}/liblqr-1-0.1.0
MASTER_SITES =			${HOMEPAGE}local--files/en:download-page/

# Library is LGPLv3, examples are GPLv3
PERMIT_PACKAGE_FTP = 		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

CONFIGURE_STYLE =		gnu
USE_LIBTOOL =			Yes
SEPARATE_BUILD =		simple
#CONFIGURE_ENV =			CFLAGS="${CFLAGS} ${COPTS}"

SHARED_LIBS +=	lqr-1           0.0           # .0.0


LIB_DEPENDS =			devel/glib2
WANTLIB +=			iconv intl m pcre glib-2.0

.include <bsd.port.mk>
