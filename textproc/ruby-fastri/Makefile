# $OpenBSD: Makefile,v 1.8 2010/11/24 21:35:15 jeremy Exp $

COMMENT=		alternative to ruby ri command-line tool

DISTNAME=		fastri-0.3.1.1
REVISION =		3
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
