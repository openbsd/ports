# $OpenBSD: Makefile,v 1.20 2013/08/06 19:07:16 ajacoutot Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.28

SHARED_LIBS +=  idn                  17.0     # 17.10

CATEGORIES=		devel
HOMEPAGE=		http://www.gnu.org/software/libidn/

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
	rm -f ${WRKSRC}/contrib/doxygen/*.orig

.include <bsd.port.mk>
