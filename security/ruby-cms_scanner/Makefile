# $OpenBSD: Makefile,v 1.10 2020/04/14 13:18:25 sebastia Exp $

COMMENT =	framework to implement CMS scanners

DISTNAME =	cms_scanner-0.9.0
CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes


MODULES =	lang/ruby
WANTLIB =	crypto ssl ${MODRUBY_WANTLIB}
NO_TEST =	Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-get_process_mem,${MODRUBY_FLAVOR},>=0.2.5,<0.3 \
			devel/ruby-ruby-progressbar,${MODRUBY_FLAVOR},>=1.10,<1.11 \
			devel/ruby-opt_parse_validator,${MODRUBY_FLAVOR}>=1.9.0,<1.10 \
			devel/ruby-yajl,${MODRUBY_FLAVOR},>=1.4.1,<1.5 \
			devel/ruby-sys-proctable,${MODRUBY_FLAVOR},>=1.2.2,<1.3 \
			net/ruby-public_suffix,${MODRUBY_FLAVOR},>=4.0.3,<4.1 \
			textproc/ruby-nokogiri,${MODRUBY_FLAVOR},>=1.10.8,<1.11 \
			www/ruby-typhoeus,${MODRUBY_FLAVOR},>=1.3,<1.4

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
