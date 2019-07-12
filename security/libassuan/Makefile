# $OpenBSD: Makefile,v 1.22 2019/07/12 20:49:04 sthen Exp $

COMMENT=		IPC library used by GnuPG and gpgme

DISTNAME=		libassuan-2.5.1
REVISION=		0

SHARED_LIBS +=  assuan            2.1      # 8.1

CATEGORIES=		security devel

HOMEPAGE=		https://www.gnupg.org/software/libassuan/index.html

# LGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += gpg-error iconv intl

MASTER_SITES=		${MASTER_SITE_GNUPG:=libassuan/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
