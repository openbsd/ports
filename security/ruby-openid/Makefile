# $OpenBSD: Makefile,v 1.6 2008/10/26 15:49:17 pirofti Exp $

COMMENT=	robust library for verifying and serving OpenID identities

DISTNAME=	ruby-openid-2.1.2
CATEGORIES=	security

MAINTAINER=	Paul Irofti <bulibuta@sdf.lonestar.org>

# Apache License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=ruby-openid/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} -I"../lib" \
		-e 'ARGV.each { |f| load f unless f =~ /^-/  }' \
		"testutil.rb" "discoverdata.rb" "test_accept.rb" \
		"test_association.rb" "test_associationmanager.rb" \
		"test_ax.rb" "test_checkid_request.rb" "test_consumer.rb" \
		"test_cryptutil.rb" "test_dh.rb" "test_discover.rb" \
		"test_discovery_manager.rb" "test_extras.rb" \
		"test_fetchers.rb" "test_filters.rb" "test_idres.rb" \
		"test_kvform.rb" "test_kvpost.rb" "test_linkparse.rb" \
		"test_message.rb" "test_nonce.rb" "test_openid_yadis.rb" \
		"test_pape.rb" "test_parsehtml.rb" "test_responses.rb" \
		"test_server.rb" "test_sreg.rb" "test_stores.rb" \
		"test_trustroot.rb" "test_urinorm.rb" "test_util.rb" \
		"test_xrds.rb" "test_xri.rb" "test_xrires.rb" \
		"test_yadis_discovery.rb" "util.rb"

.include <bsd.port.mk>
