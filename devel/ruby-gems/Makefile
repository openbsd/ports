# $OpenBSD: Makefile,v 1.17 2009/10/12 17:18:00 bernd Exp $

COMMENT=	package management framework for the Ruby language

V=		1.3.5
DISTNAME=	rubygems-$V
PKGNAME= 	ruby-gems-$V
CATEGORIES=	devel

HOMEPAGE=	http://docs.rubygems.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=rubygems/}
EXTRACT_SUFX=	.tgz

MODULES= 	lang/ruby

CONFIGURE_STYLE=ruby setup

MAKE_ENV=	GEM_HOME=${PREFIX}/lib/ruby/gems/${MODRUBY_REV} \
		RUBYLIB=${PREFIX}/lib/ruby/site_ruby/${MODRUBY_REV}

PORTHOME = 	${WRKDIR}

SUBST_VARS=	DISTNAME

REGRESS_DEPENDS=::devel/ruby-rake

do-configure:
do-build:

pre-install:
	@${SUBST_CMD} ${WRKSRC}/lib/rubygems/config_file.rb

do-install:
	 @cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} setup.rb install \
		--prefix=${PREFIX}
do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
