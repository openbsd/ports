# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:52 sthen Exp $

COMMENT=		dispatch XML-RPC methods with Catalyst (deprecated)

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Catalyst-Plugin-XMLRPC-2.01
CATEGORIES=		www
REVISION =		0

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
