# $OpenBSD: Makefile,v 1.37 2020/07/25 07:22:34 ajacoutot Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.36

SHARED_LIBS +=  idn                  18.0     # 18.1

CATEGORIES=		devel

HOMEPAGE=		https://www.gnu.org/software/libidn/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_GNU:=libidn/}

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-csharp \
			--disable-java \
			--disable-valgrind-tests

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
