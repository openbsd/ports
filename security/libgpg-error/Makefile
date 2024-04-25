COMMENT=		error codes for GnuPG related software

DISTNAME=		libgpg-error-1.49
CATEGORIES=		security devel
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  gpg-error            3.27     # 36.0

HOMEPAGE=		https://www.gnupg.org/software/libgpg-error/index.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

SITES=			${SITE_GNUPG:=libgpg-error/}

USE_GMAKE=		Yes

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# needed by (at least) multimedia/libbdplus and security/gpgme
CONFIGURE_ARGS +=	--enable-install-gpg-error-config

.include <bsd.port.mk>
