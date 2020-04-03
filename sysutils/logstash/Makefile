# $OpenBSD: Makefile,v 1.34 2020/04/03 10:49:25 pvk Exp $

ONLY_FOR_ARCHS =	amd64
COMMENT =		tool for managing events and logs

V =			7.6.2
DISTNAME =		logstash-oss-$V
PKGNAME =		logstash-$V
EPOCH =			0

CATEGORIES =		sysutils

HOMEPAGE =		https://www.elastic.co/products/logstash

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://artifacts.elastic.co/downloads/logstash/

MASTER_SITES0 =		https://distfiles.tristero.se/
DISTFILES =		logstash-oss-$V.tar.gz \
			netty-tcnative-boringssl-static-2.0.12.Final.jar:0
EXTRACT_ONLY =		logstash-oss-$V.tar.gz

MODULES =		java
MODJAVA_VER =		11

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
	rm ${WRKSRC}/bin/{*.bat,*.beforesubst,*.orig,system-install}
	rm ${WRKSRC}/config/*.{beforesubst,orig} \
		${WRKSRC}/config/startup.options
	rm ${WRKSRC}/vendor/jruby/bin/*.{bash,bat,dll,exe,sh}
	rm -r ${WRKSRC}/vendor/jruby/lib/jni
	cd ${WRKSRC}/vendor/jruby/lib/ruby/stdlib/ffi/platform/ && \
		rm -r *-{aix,cygwin,darwin,freebsd,gnu,linux,netbsd,solaris,windows}*
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
	cp ${FULLDISTDIR}/netty-tcnative-boringssl-static-2.0.12.Final.jar \
		${LOGSTASH_HOME}vendor/bundle/jruby/2.5.0/gems/logstash-input-beats-6.0.9-java/vendor/jar-dependencies/io/netty/netty-tcnative-boringssl-static/2.0.12.Final/
	cp ${FULLDISTDIR}/netty-tcnative-boringssl-static-2.0.12.Final.jar \
		${LOGSTASH_HOME}vendor/bundle/jruby/2.5.0/gems/logstash-input-http-3.3.4-java/vendor/jar-dependencies/io/netty/netty-tcnative-boringssl-static/2.0.12.Final/
	${INSTALL_DATA} ${FILESDIR}/filebeat.yml \
		${PREFIX}/share/examples/logstash/filebeat.yml
	cd ${PREFIX}/logstash && \
		ln -s ${LOCALSTATEDIR}/logstash/data data && \
		ln -s ${SYSCONFDIR}/logstash config

.include <bsd.port.mk>
