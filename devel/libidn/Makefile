# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:10 espie Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.26
SHARED_LIBS=		idn 17.0	# .17.9

CATEGORIES=		devel
HOMEPAGE=		http://www.gnu.org/software/libidn/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=libidn/}

WANTLIB=		c
MODULES=		devel/gettext

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-csharp \
			--disable-java
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build-aux

post-extract:
	@rm -f ${WRKSRC}/contrib/doxygen/*.orig

.include <bsd.port.mk>
