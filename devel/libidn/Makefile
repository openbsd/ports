# $OpenBSD: Makefile,v 1.25 2015/05/18 11:29:37 jasper Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.30

SHARED_LIBS +=  idn                  17.1     # 17.13

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
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-csharp \
			--disable-java

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build-aux

post-extract:
	rm ${WRKSRC}/contrib/doxygen/*.orig

.include <bsd.port.mk>
