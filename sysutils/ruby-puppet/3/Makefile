# $OpenBSD: Makefile,v 1.129 2016/04/28 09:38:56 jasper Exp $

PORTROACH=		limit:^3

VERSION=		3.8.7
REVISION=		2

MODULES +=		lang/python
MODPY_BUILDDEP = 	No
MODPY_RUNDEP =		No

RUN_DEPENDS+=		archivers/gtar \
			devel/ruby-rgen,${MODRUBY_FLAVOR}

PORTHOME=		${WRKDIR}
SUBST_VARS +=		MODRUBY_BINREV

pre-install:
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/gem.rb
	${SUBST_CMD} ${WRKDIST}/lib/puppet/provider/package/pip.rb

do-install:
	${SUBST_CMD} ${WRKSRC}/lib/puppet/defaults.rb ${WRKSRC}/ext/rack/config.ru
	@cd ${WRKSRC} && ${ALL_FAKE_FLAGS} ${RUBY} install.rb
	mv ${WRKINST}${SYSCONFDIR}/puppet ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${WRKSRC}/conf/*.conf ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA} ${FILESDIR}/puppet.conf ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp/
	${INSTALL_DATA} ${WRKSRC}/ext/emacs/* ${PREFIX}/share/emacs/site-lisp/
	${INSTALL_DATA} ${WRKSRC}/ext/rack/config.ru ${PREFIX}/${MODRUBY_RELEXAMPLEDIR}-puppet
	gunzip ${PREFIX}/man/*/*.gz

.include <bsd.port.mk>
