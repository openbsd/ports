# $OpenBSD: Makefile,v 1.15 2012/07/11 13:16:16 naddy Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.25
SHARED_LIBS=		idn 17.0	# .17.8

CATEGORIES=		devel
HOMEPAGE=		http://www.gnu.org/software/libidn/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
