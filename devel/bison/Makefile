# $OpenBSD: Makefile,v 1.42 2008/07/08 00:24:17 brad Exp $

COMMENT=	GNU parser generator

DISTNAME=	bison-2.3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=bison/}

HOMEPAGE=	http://www.gnu.org/software/bison/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c

MODULES=	devel/gettext
BUILD_DEPENDS=	::devel/m4

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-yacc
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
