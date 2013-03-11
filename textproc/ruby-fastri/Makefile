# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:46 espie Exp $

COMMENT=		alternative to ruby ri command-line tool

DISTNAME=		fastri-0.3.1.1
REVISION =		6
CATEGORIES=		textproc

HOMEPAGE=		http://rubyforge.org/projects/fastri/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

TEST_DEPENDS=	devel/ruby-rcov,${MODRUBY_FLAVOR}
MODRUBY_TEST=	rake

.include <bsd.port.mk>
