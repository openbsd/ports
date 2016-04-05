# $OpenBSD: Makefile,v 1.29 2016/04/05 19:28:24 naddy Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.32
REVISION=		0

SHARED_LIBS +=  idn                  17.2     # 17.14

CATEGORIES=		devel

HOMEPAGE=		https://www.gnu.org/software/libidn/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_GNU:=libidn/}

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-csharp \
			--disable-java

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build-aux

post-extract:
	rm ${WRKSRC}/contrib/doxygen/*.orig

.include <bsd.port.mk>
