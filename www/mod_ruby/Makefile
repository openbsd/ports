# $OpenBSD: Makefile,v 1.4 2006/10/26 19:45:58 bernd Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
SHARED_ONLY=		Yes

COMMENT=		"module that embeds Ruby into Apache"

DISTNAME=		mod_ruby-1.2.6
CATEGORIES=		www

HOMEPAGE=		http://modruby.net/

MAINTAINER=		Adam Montague <amontague@siriushosting.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

MASTER_SITES=		http://modruby.net/archive/

LIB_DEPENDS=		ruby::lang/ruby

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	configure.rb
CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs

NO_REGRESS=		Yes

SEPARATE_BUILD=		concurrent
INSTALL_TARGET=		install-ruby

SUBST_VARS=		PKGNAME

post-build:
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_ruby-enable \
		> ${WRKBUILD}/mod_ruby-enable

post-install:
	${INSTALL_DATA} ${WRKBUILD}/mod_ruby.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_ruby-enable ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_ruby
	${INSTALL_DATA} ${WRKSRC}/examples/httpd.conf ${PREFIX}/share/examples/mod_ruby/

.include <bsd.port.mk>
