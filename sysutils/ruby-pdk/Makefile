COMMENT =	Puppet development kit

DISTNAME =	pdk-3.2.0
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/puppetlabs/pdk
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS += archivers/ruby-minitar,${MODRUBY_FLAVOR}>=0.8,<1 \
		devel/ruby-childprocess,${MODRUBY_FLAVOR}>=4.1.0,<4.2 \
		devel/ruby-cri,${MODRUBY_FLAVOR}>=2.15.11,<2.16 \
		devel/ruby-deep_merge,${MODRUBY_FLAVOR}>=1.2.2,<1.3 \
		devel/ruby-diff-lcs,${MODRUBY_FLAVOR}>=1.3 \
		devel/ruby-ffi,${MODRUBY_FLAVOR}>=1.15.5,<2 \
		devel/ruby-hitimes,${MODRUBY_FLAVOR}=2.0.0 \
		devel/ruby-json_pure,${MODRUBY_FLAVOR}>=2.7.0,<3 \
		devel/ruby-json-schema,${MODRUBY_FLAVOR}>=4,<5 \
		devel/ruby-pathspec,${MODRUBY_FLAVOR}>=1.1,<2 \
		sysutils/ruby-tty-prompt,${MODRUBY_FLAVOR}>=0.23,<1 \
		sysutils/ruby-tty-spinner,${MODRUBY_FLAVOR}>=0.9,<1 \
		sysutils/ruby-tty-which,${MODRUBY_FLAVOR}>=0.5,<1
		
CONFIGURE_STYLE =	ruby gem

pre-build:
	${SUBST_CMD} ${WRKSRC}/lib/pdk/cli/exec.rb

.include <bsd.port.mk>
