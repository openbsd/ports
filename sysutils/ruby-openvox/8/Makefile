VERSION =		8.24.2
REVISION =		0

RUN_DEPENDS =		converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.13,<2 \
			devel/ruby-concurrent-ruby,${MODRUBY_FLAVOR}>=1,<2 \
			devel/ruby-deep_merge,${MODRUBY_FLAVOR}>=1,<2 \
			devel/ruby-fast_gettext,${MODRUBY_FLAVOR}>=2.1,<4 \
			devel/ruby-locale,${MODRUBY_FLAVOR}>=2.1,<3 \
			devel/ruby-puppet-resource_api,${MODRUBY_FLAVOR}>=1.5 \
			devel/ruby-scanf,${MODRUBY_FLAVOR}>=1,<2 \
			devel/ruby-semantic_puppet,${MODRUBY_FLAVOR}>=1,<2 \
			sysutils/ruby-openfact>=5.2.1p0

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/puppet/provider/package/gem.rb \
		${WRKSRC}/lib/puppet/provider/package/pip.rb \
		${WRKSRC}/lib/puppet/provider/package/pip3.rb \
		${WRKSRC}/lib/puppet/reference/configuration.rb \
		${WRKSRC}/lib/puppet/util/run_mode.rb \
		${WRKSRC}/lib/puppet/defaults.rb

post-install:
	 cd ${PREFIX} && rm -rf man/ && mv ${GEM_LIB}/gems/${DISTNAME}/man .

.include <bsd.port.mk>
