# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:58 sthen Exp $

COMMENT=		dispatch XML-RPC methods with Catalyst (deprecated)

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Catalyst-Plugin-XMLRPC-2.01
CATEGORIES=		www
REVISION =		1

# same as perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime \
			net/p5-RPC-XML>=0.69 \
			devel/p5-MRO-Compat

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE =	modinst

post-build:
	@rm -f ${WRKBUILD}/blib/lib/Catalyst/Plugin/XMLRPC.pm.orig

.include <bsd.port.mk>
