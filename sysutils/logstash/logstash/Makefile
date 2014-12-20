# $OpenBSD: Makefile,v 1.3 2014/12/20 12:28:04 jasper Exp $

COMMENT=		tool for managing events and logs

# built with https://github.com/elasticsearch/logstash/pull/2236
DISTNAME=		logstash-1.5.0.beta1
REVISION=		1

MASTER_SITES=		http://distfiles.nl/ \
			https://download.elasticsearch.org/logstash/logstash/

MODULES=		java \
			lang/ruby
MODJAVA_VER=		1.7+
MODJAVA_JRERUN=		Yes
MODRUBY_BUILDDEP=	No

RUN_DEPENDS=		java/javaPathHelper \
			lang/jruby

NO_TEST=		Yes

LS_BASE=		${PREFIX}/logstash/

# with NO_BUILD defined JAVA_HOME won't get set, so this is as close as we'll
# get to "building". Wipe the jruby vendor directory as we'll later link to
# the system jruby.
do-build:
	-rm -r ${WRKSRC}/vendor/jruby
	${SUBST_CMD} ${WRKSRC}/bin/logstash.lib.sh
	@# apply hammer to fixup weird modes
	find ${WRKSRC}/vendor/ -type f -exec chmod 0644 {} \;

do-install:
	${INSTALL_DATA_DIR} ${LS_BASE}/{bin,lib,locales,patterns,vendor}/
.for b in logstash logstash-web logstash.lib.sh plugin
	${INSTALL_SCRIPT} ${WRKSRC}/bin/$b ${LS_BASE}/bin/
.endfor
	rm ${WRKSRC}/vendor/bundle/jruby/1.9/gems/filewatch-0.5.1/lib/filewatch/*.orig
	cd ${WRKSRC} && cp -R lib locales patterns vendor ${LS_BASE}
	cd ${LS_BASE}/vendor/ && ln -sf ${LOCALBASE}/jruby
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/logstash/
	${SUBST_CMD} -c ${FILESDIR}/logstash.conf \
		${PREFIX}/share/examples/logstash/logstash.conf

.include <bsd.port.mk>
