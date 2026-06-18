COMMENT =	WordPress security scanner

REVISION =	0
DISTNAME =	wpscan-4.0.0
CATEGORIES =	security

HOMEPAGE =	https://wpscan.org/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# https://github.com/wpscanteam/wpscan/issues/1304
# Free for non-commercial use
PERMIT_PACKAGE=	Yes

#BUILD_DEPENDS +=	${RUN_DEPENDS}
#RUN_DEPENDS +=		security/ruby-cms_scanner,${MODRUBY_FLAVOR},>=0.15.0,<0.16

BUILD_DEPENDS +=        ${RUN_DEPENDS}
RUN_DEPENDS +=          devel/ruby-activesupport,${MODRUBY_FLAVOR},>=7.1,<8.2 \
			devel/ruby-get_process_mem,${MODRUBY_FLAVOR},>=0.2.5,<1.1 \
                        devel/ruby-ruby-progressbar,${MODRUBY_FLAVOR},>=1.10,<1.14 \
                        devel/ruby-yajl,${MODRUBY_FLAVOR},>=1.4.1,<1.5 \
                        net/ruby-public_suffix,${MODRUBY_FLAVOR},>=4.0.3,<7.1.0 \
                        textproc/ruby-nokogiri,${MODRUBY_FLAVOR},>=1.16,<2 \
			www/ruby-addressable,${MODRUBY_FLAVOR}>=2.9,<3 \
                        www/ruby-ethon,${MODRUBY_FLAVOR},>=0.14,<0.19 \
                        www/ruby-ferrum,${MODRUBY_FLAVOR},>=0.8,<1 \
                        www/ruby-typhoeus,${MODRUBY_FLAVOR},>=1.3,<1.7 \
                        www/ruby-xmlrpc,${MODRUBY_FLAVOR},>=0.3,<1

MODULES =	lang/ruby
MODRUBY_HANDLE_FLAVORS =	No
GEM_FLAGS =			--no-format-executable

CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
