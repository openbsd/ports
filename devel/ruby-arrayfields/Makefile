# $OpenBSD: Makefile,v 1.3 2011/09/16 09:24:57 espie Exp $

COMMENT=		allow keyword access to array instances

DISTNAME=		arrayfields-4.7.4
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		http://codeforpeople.com/lib/ruby/arrayfields/

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/*.rb

.include <bsd.port.mk>
