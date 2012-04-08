# $OpenBSD: Makefile,v 1.7 2012/04/08 21:58:58 sthen Exp $

COMMENT=		dispatch XML-RPC methods with Catalyst (deprecated)

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-XMLRPC-2.01
CATEGORIES=		www
USE_GROFF =		Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime \
			net/p5-RPC-XML>=0.69 \
			devel/p5-MRO-Compat

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE =	modinst

post-build:
	@rm -f ${WRKBUILD}/blib/lib/Catalyst/Plugin/XMLRPC.pm.orig

.include <bsd.port.mk>
