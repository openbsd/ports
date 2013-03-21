# $OpenBSD: Makefile,v 1.18 2013/03/21 08:45:15 ajacoutot Exp $

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

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-csharp \
			--disable-java
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build-aux

post-extract:
	@rm -f ${WRKSRC}/contrib/doxygen/*.orig

.include <bsd.port.mk>
