# $OpenBSD: Makefile,v 1.6 2013/10/26 23:55:35 jeremy Exp $

COMMENT=		allow keyword access to array instances

DISTNAME=		arrayfields-4.7.4
CATEGORIES=		devel
REVISION=		2

HOMEPAGE=		http://codeforpeople.com/lib/ruby/arrayfields/

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

do-test:
	@cd ${WRKBUILD} && ${RUBY} test/*.rb

.include <bsd.port.mk>
