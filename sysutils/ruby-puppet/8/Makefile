PORTROACH=		limit:^7

VERSION=		8.6.0

RUN_DEPENDS+=		converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.13,<2 \
			devel/ruby-concurrent-ruby,${MODRUBY_FLAVOR}>=1,<2 \
			devel/ruby-deep_merge,${MODRUBY_FLAVOR}>=1,<2 \
			devel/ruby-fast_gettext,${MODRUBY_FLAVOR}>=2.1,<3 \
			devel/ruby-locale,${MODRUBY_FLAVOR}>=2.1,<3 \
			devel/ruby-puppet-resource_api,${MODRUBY_FLAVOR}>=1.5,<2 \
			devel/ruby-scanf,${MODRUBY_FLAVOR}>=1,<2 \
			devel/ruby-semantic_puppet,${MODRUBY_FLAVOR}>=1,<2 \
			net/ruby-msgpack,${MODRUBY_FLAVOR} \
			sysutils/ruby-facter,${MODRUBY_FLAVOR}>=4.3.0,<5

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/puppet/provider/package/gem.rb \
		${WRKSRC}/lib/puppet/provider/package/pip.rb \
		${WRKSRC}/lib/puppet/provider/package/pip3.rb \
		${WRKSRC}/lib/puppet/reference/configuration.rb \
		${WRKSRC}/lib/puppet/util/run_mode.rb \
		${WRKSRC}/lib/puppet/defaults.rb

.include <bsd.port.mk>
