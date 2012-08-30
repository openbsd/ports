# $OpenBSD: Makefile,v 1.11 2012/08/30 14:09:21 sthen Exp $

COMMENT =		PHP support for retrieving info about files

DISTNAME =		Fileinfo-1.0.4
REVISION =		7
CATEGORIES =		sysutils
MAINTAINER =		Johan Huldtgren <jhuldtgren@gmail.com>

# PHP
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		z magic

MODULES=		lang/php/pecl
CONFIGURE_STYLE=	gnu

LIB_DEPENDS =		devel/libmagic

.include <bsd.port.mk>
