# $OpenBSD: Makefile,v 1.20 2015/07/16 17:27:09 jeremy Exp $

COMMENT=	system monitoring framework written in Ruby

DISTNAME=	god-0.7.22
FULLPKGNAME=	${DISTNAME}
REVISION=	1
CATEGORIES=	sysutils

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

MODRUBY_HANDLE_FLAVORS = No

CONFIGURE_STYLE=ruby gem ext
GEM_FLAGS =	--no-format-executable

post-install:
	@mkdir -p ${PREFIX}/share/examples/god
	@cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/god/

# Tests require root access, and appear to hang when run as root

.include <bsd.port.mk>
