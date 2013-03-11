# $OpenBSD: Makefile,v 1.12 2013/03/11 11:41:32 espie Exp $

COMMENT =		PHP support for retrieving info about files

DISTNAME =		Fileinfo-1.0.4
REVISION =		7
CATEGORIES =		sysutils
MAINTAINER =		Johan Huldtgren <jhuldtgren@gmail.com>

# PHP
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		z magic

MODULES=		lang/php/pecl
CONFIGURE_STYLE=	gnu

LIB_DEPENDS =		devel/libmagic

.include <bsd.port.mk>
