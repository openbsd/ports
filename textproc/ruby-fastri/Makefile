# $OpenBSD: Makefile,v 1.9 2011/01/06 04:24:24 jeremy Exp $

COMMENT=		alternative to ruby ri command-line tool

DISTNAME=		fastri-0.3.1.1
REVISION =		4
CATEGORIES=		textproc

HOMEPAGE=		http://rubyforge.org/projects/fastri/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

REGRESS_DEPENDS=	devel/ruby-rcov,${MODRUBY_FLAVOR}
MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
