# $OpenBSD: Makefile,v 1.133 2016/05/27 19:10:39 sebastia Exp $

PORTROACH=		limit:^3

VERSION=		3.8.7
REVISION=		3

RUN_DEPENDS+=		databases/ruby-hiera,${MODRUBY_FLAVOR} \
			sysutils/ruby-facter>=2.0.1p0

SUBST_VARS +=		MODRUBY_BINREV

pre-install:
	mkdir -p ${WRKDIR}/home
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/pip.rb

do-install:
	${SUBST_CMD} ${WRKSRC}/lib/puppet/defaults.rb ${WRKSRC}/ext/rack/config.ru
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	mv ${WRKINST}${SYSCONFDIR}/puppet ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${WRKSRC}/conf/*.conf ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${FILESDIR}/puppet.conf ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${WRKSRC}/ext/rack/config.ru ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet

.include <bsd.port.mk>
