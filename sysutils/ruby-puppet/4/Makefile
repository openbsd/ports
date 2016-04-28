# $OpenBSD: Makefile,v 1.2 2016/04/28 16:02:33 jasper Exp $

PORTROACH=		limit:^4

VERSION=		4.4.2

RUN_DEPENDS+=		databases/ruby-hiera3,${MODRUBY_FLAVOR} \
			sysutils/facter

pre-install:
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/pip.rb
	${SUBST_CMD} ${WRKSRC}/lib/puppet/reference/configuration.rb
	${SUBST_CMD} ${WRKSRC}/lib/puppet/util/run_mode.rb

do-install:
	${SUBST_CMD} ${WRKSRC}/lib/puppet/defaults.rb ${WRKSRC}/ext/rack/config.ru
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb \
		--vardir=${VARBASE}/db/puppet/cache/ \
		--rundir=${VARBASE}/run/puppetlabs/
	mv ${WRKINST}${SYSCONFDIR}/puppetlabs ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${WRKSRC}/conf/*.conf ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet/puppet/
	${INSTALL_DATA} ${WRKSRC}/ext/rack/config.ru ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet/puppet/

.include <bsd.port.mk>
