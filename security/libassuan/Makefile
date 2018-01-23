# $OpenBSD: Makefile,v 1.21 2018/01/23 11:31:22 jca Exp $

COMMENT=		IPC library used by GnuPG and gpgme

DISTNAME=		libassuan-2.5.1
REVISION=		0

SHARED_LIBS +=  assuan            2.1      # 8.1

CATEGORIES=		security devel

HOMEPAGE=		https://www.gnupg.org/software/libassuan/index.html

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += gpg-error iconv intl

MASTER_SITES=		${MASTER_SITE_GNUPG:=libassuan/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
