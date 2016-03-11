# $OpenBSD: Makefile,v 1.28 2016/03/11 20:28:24 naddy Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.32

SHARED_LIBS +=  idn                  17.2     # 17.14

CATEGORIES=		devel

HOMEPAGE=		https://www.gnu.org/software/libidn/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		${MASTER_SITE_GNU:=libidn/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-csharp \
			--disable-java

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build-aux

post-extract:
	rm ${WRKSRC}/contrib/doxygen/*.orig

.include <bsd.port.mk>
