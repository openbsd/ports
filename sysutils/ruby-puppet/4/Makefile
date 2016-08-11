# $OpenBSD: Makefile,v 1.10 2016/08/11 11:41:42 jasper Exp $

PORTROACH=		limit:^4

VERSION=		4.5.3

RUN_DEPENDS+=		databases/ruby-hiera3,${MODRUBY_FLAVOR} \
			devel/ruby-rgen,${MODRUBY_FLAVOR} \
			sysutils/facter

pre-install:
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb \
		${WRKDIST}/lib/puppet/provider/package/pip.rb \
		${WRKSRC}/lib/puppet/reference/configuration.rb \
		${WRKSRC}/lib/puppet/util/run_mode.rb \
		${WRKSRC}/lib/puppet/defaults.rb \
		${WRKSRC}/ext/rack/config.ru

do-install:
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb \
		--vardir=${VARBASE}/db/puppet/cache/ \
		--rundir=${VARBASE}/run/puppetlabs/
	mv ${WRKINST}${SYSCONFDIR}/puppetlabs ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${WRKSRC}/conf/*.conf ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet/puppet/
	${INSTALL_DATA} ${WRKSRC}/ext/rack/config.ru ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet/puppet/

.include <bsd.port.mk>
