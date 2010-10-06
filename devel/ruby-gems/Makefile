# $OpenBSD: Makefile,v 1.20 2010/10/06 18:12:19 jeremy Exp $

COMMENT=	package management framework for the Ruby language

V=		1.3.7
DISTNAME=	rubygems-$V
PKGNAME= 	ruby-gems-$V
REVISION =	0
CATEGORIES=	devel

HOMEPAGE=	http://docs.rubygems.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://production.cf.rubygems.org/rubygems/
EXTRACT_SUFX=	.tgz

MODULES= 	lang/ruby

CONFIGURE_STYLE=ruby setup

MAKE_ENV=	GEM_HOME=${PREFIX}/lib/ruby/gems/${MODRUBY_REV} \
		RUBYLIB=${PREFIX}/lib/ruby/site_ruby/${MODRUBY_REV}

PORTHOME = 	${WRKDIR}

SUBST_VARS=	DISTNAME

do-configure:
do-build:

pre-install:
	@${SUBST_CMD} ${WRKSRC}/lib/rubygems/config_file.rb

do-install:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} setup.rb install \
		--prefix=${PREFIX}
	@mkdir -p ${WRKINST}${LOCALBASE}/lib/ruby/gems/${MODRUBY_REV}/{,cache,doc,gems,specifications}

REGRESS_DEPENDS=	::devel/ruby-hoe
MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
