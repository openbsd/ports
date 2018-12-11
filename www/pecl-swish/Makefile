# $OpenBSD: Makefile,v 1.20 2018/12/11 12:33:26 sthen Exp $

COMMENT =	PHP interface to swish-e

DISTNAME =	swish-0.5.0
REVISION =	4

# PHP
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c m pcre pcreposix swish-e z

MODULES =	lang/php/pecl
MODPECL_V =	5.6
CONFIGURE_STYLE =  gnu
AUTOCONF_VERSION = 2.59
AUTOMAKE_VERSION = 1.4

LIB_DEPENDS =	textproc/swish-e

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

.include <bsd.port.mk>
