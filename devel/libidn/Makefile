# $OpenBSD: Makefile,v 1.14 2012/03/23 11:01:11 ajacoutot Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.24
SHARED_LIBS=		idn 17.0	# .17.5

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

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-csharp \
			--disable-java
USE_GROFF =		Yes

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/build-aux

USE_LIBTOOL=		Yes

post-extract:
	@rm -f ${WRKSRC}/contrib/doxygen/*.orig

.include <bsd.port.mk>
