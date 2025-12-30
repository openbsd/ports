COMMENT=		IPC library used by GnuPG and gpgme

DISTNAME=		libassuan-3.0.2
REVISION=		0

SHARED_LIBS +=  assuan            3.0      # 9.2

CATEGORIES=		security devel

HOMEPAGE=		https://www.gnupg.org/software/libassuan/index.html

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += gpg-error iconv intl pthread

SITES=			${SITE_GNUPG:=libassuan/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
