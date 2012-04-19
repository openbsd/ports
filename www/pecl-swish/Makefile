# $OpenBSD: Makefile,v 1.8 2012/04/19 21:30:38 sthen Exp $

COMMENT =	PHP interface to swish-e

DISTNAME =	swish-0.4.0
REVISION =	0

# PHP
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	m pcre pcreposix swish-e z

MODULES =	lang/php/pecl
CONFIGURE_STYLE =  gnu
AUTOCONF_VERSION = 2.59
AUTOMAKE_VERSION = 1.4

LIB_DEPENDS =	textproc/swish-e

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

.include <bsd.port.mk>
