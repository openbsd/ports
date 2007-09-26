# $OpenBSD: Makefile,v 1.7 2007/09/26 05:05:40 bernd Exp $

COMMENT=		internationalized string handling

DISTNAME=		libidn-1.1
SHARED_LIBS=		idn 16.30

CATEGORIES=		devel
HOMEPAGE=		http://www.gnu.org/software/libidn/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://alpha.gnu.org/pub/gnu/libidn/ \
			http://josefsson.org/libidn/releases/

WANTLIB=		c
MODULES=		devel/gettext
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

USE_LIBTOOL=		Yes

post-extract:
	@rm -f ${WRKSRC}/contrib/doxygen/*.orig

.include <bsd.port.mk>
