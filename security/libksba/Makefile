COMMENT = 	X.509 library

DISTNAME = 	libksba-1.7.0

CATEGORIES = 	security

SHARED_LIBS = 	ksba 2.1	# 23.0

SITES =		${SITE_GNUPG:=libksba/}

HOMEPAGE = 	https://www.gnupg.org/software/libksba/index.html

MAINTAINER = 	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX = 		.tar.bz2

LIB_DEPENDS = 		devel/gettext,-runtime \
			security/libgpg-error>=1.28
WANTLIB += gpg-error iconv intl

CONFIGURE_STYLE = 	gnu

.include <bsd.port.mk>
