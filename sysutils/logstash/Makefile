ONLY_FOR_ARCHS =	amd64
COMMENT =		tool for managing events and logs

V =			8.12.2
DISTNAME =		logstash-oss-$V-darwin-x86_64
PKGNAME =		logstash-$V
EPOCH =			0

CATEGORIES =		sysutils

HOMEPAGE =		https://www.elastic.co/products/logstash

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

SITES =			https://artifacts.elastic.co/downloads/logstash/

MODULES =		java
MODJAVA_VER =		17

RUN_DEPENDS =		java/javaPathHelper \
			lang/jruby \
			shells/bash

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/logstash-$V

LOGSTASH_HOME =		${PREFIX}/logstash/

JFFI_ARCH =		${MACHINE_ARCH:S/amd64/x86_64/}-OpenBSD
SUBST_TARGETS =		${WRKSRC}/bin/logstash{.lib.sh,-plugin} \
			${WRKSRC}/config/{jvm.options,logstash.yml,pipelines.yml}
SUBST_VARS =		JFFI_ARCH LOCALSTATEDIR

# with NO_BUILD defined JAVA_HOME won't get set, so this is as close as we'll
# get to "building". Wipe the jruby vendor directory as we'll later link to
# the system jruby.
do-build:
	${SUBST_CMD} ${SUBST_TARGETS}
	rm ${WRKSRC}/bin/*{.bat,.beforesubst,${PATCHORIG},system-install}
	rm ${WRKSRC}/config/*{.beforesubst,${PATCHORIG}} \
		${WRKSRC}/config/startup.options
	rm ${WRKSRC}/vendor/jruby/bin/*.{bat,dll,exe,sh}
	rm -r ${WRKSRC}/vendor/jruby/tmp
	cd ${WRKSRC}/vendor/jruby/lib/ruby/stdlib/ffi/platform/ && \
		rm -r *-{aix,cygwin,darwin,dragonflybsd,freebsd,gnu,haiku,linux,msys,netbsd,solaris,windows}*
	@# apply hammer to fixup weird modes
	find ${WRKSRC}/vendor/ -type f -exec chmod 0644 {} +
	chmod 755 ${WRKSRC}/vendor/jruby/bin/*

do-install:
	${INSTALL_DATA_DIR} ${LOGSTASH_HOME}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/bin/* ${LOGSTASH_HOME}/bin/
	${INSTALL_DATA} ${WRKSRC}/Gemfile* ${LOGSTASH_HOME}
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/logstash/
	${INSTALL_DATA} ${WRKSRC}/{CONTRIBUTORS,LICENSE.txt,NOTICE.TXT} \
		 ${PREFIX}/share/doc/logstash/
	${INSTALL_DATA} ${WRKSRC}/config/* ${PREFIX}/share/examples/logstash/
	cp -R ${WRKSRC}/{lib,logstash-*,modules,tools,vendor} ${LOGSTASH_HOME}
	${INSTALL_DATA} ${FILESDIR}/filebeat.yml \
		${PREFIX}/share/examples/logstash/filebeat.yml
	cd ${PREFIX}/logstash && \
		ln -s ${LOCALSTATEDIR}/logstash/data data && \
		ln -s ${SYSCONFDIR}/logstash config

.include <bsd.port.mk>
