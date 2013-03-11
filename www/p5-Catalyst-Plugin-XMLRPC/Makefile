# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:45 espie Exp $

COMMENT=		dispatch XML-RPC methods with Catalyst (deprecated)

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-XMLRPC-2.01
CATEGORIES=		www
USE_GROFF =		Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime \
			net/p5-RPC-XML>=0.69 \
			devel/p5-MRO-Compat

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE =	modinst

post-build:
	@rm -f ${WRKBUILD}/blib/lib/Catalyst/Plugin/XMLRPC.pm.orig

.include <bsd.port.mk>
