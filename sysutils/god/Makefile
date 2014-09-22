# $OpenBSD: Makefile,v 1.18 2014/09/22 15:18:44 jeremy Exp $

COMMENT=	system monitoring framework written in Ruby

DISTNAME=	god-0.7.22
FULLPKGNAME=	${DISTNAME}
CATEGORIES=	sysutils

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

MODRUBY_REV =		1.9
MODRUBY_HANDLE_FLAVORS = No

CONFIGURE_STYLE=ruby gem ext
GEM_FLAGS =	--no-format-executable

post-install:
	@mkdir -p ${PREFIX}/share/examples/god
	@cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/god/

# Tests require root access, and appear to hang when run as root

.include <bsd.port.mk>
