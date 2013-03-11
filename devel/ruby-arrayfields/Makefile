# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:27 espie Exp $

COMMENT=		allow keyword access to array instances

DISTNAME=		arrayfields-4.7.4
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		http://codeforpeople.com/lib/ruby/arrayfields/

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

do-test:
	@cd ${WRKBUILD} && ${RUBY} test/*.rb

.include <bsd.port.mk>
