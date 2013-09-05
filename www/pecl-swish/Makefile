# $OpenBSD: Makefile,v 1.14 2013/09/05 11:58:04 sthen Exp $

COMMENT =	PHP interface to swish-e

DISTNAME =	swish-0.5.0

# PHP
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	m pcre pcreposix swish-e z

MODULES =	lang/php/pecl
CONFIGURE_STYLE =  gnu
AUTOCONF_VERSION = 2.59
AUTOMAKE_VERSION = 1.4

LIB_DEPENDS =	textproc/swish-e

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

.include <bsd.port.mk>
