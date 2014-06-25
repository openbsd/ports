# $OpenBSD: Makefile,v 1.31 2014/06/25 15:38:18 jeremy Exp $

COMMENT=	package management framework for the Ruby language

V=		1.8.23
DISTNAME=	rubygems-$V
PKGNAME= 	ruby-gems-$V
REVISION=	2
CATEGORIES=	devel

HOMEPAGE=	http://docs.rubygems.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://production.cf.rubygems.org/rubygems/
EXTRACT_SUFX=	.tgz

MODULES= 	lang/ruby
MODRUBY_REV=	1.8

CONFIGURE_STYLE=ruby setup

MAKE_ENV=	GEM_HOME=${PREFIX}/lib/ruby/gems/${MODRUBY_LIBREV} \
		RUBYLIB=${PREFIX}/lib/ruby/site_ruby/${MODRUBY_LIBREV}

PORTHOME = 	${WRKDIR}

SUBST_VARS=	DISTNAME

do-configure:
do-build:

pre-install:
	@${SUBST_CMD} ${WRKSRC}/lib/rubygems/config_file.rb

do-install:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} setup.rb install \
		--prefix=${PREFIX}
	@mkdir -p ${WRKINST}${LOCALBASE}/lib/ruby/gems/${MODRUBY_LIBREV}/{,cache,doc,gems,specifications}

TEST_DEPENDS=	devel/ruby-hoe
MODRUBY_TEST=	rake

.include <bsd.port.mk>
