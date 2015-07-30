# $OpenBSD: Makefile,v 1.15 2015/07/30 07:53:26 jasper Exp $

COMMENT=		tool for managing events and logs

V=			1.5.3
DISTNAME=		logstash-$V
PKGNAME=		logstash-${V:S/-/./}
EPOCH=			0

MASTER_SITES=		https://download.elastic.co/logstash/logstash/

MODULES=		java
MODJAVA_VER=		1.8+
MODJAVA_JRERUN=		Yes

RUN_DEPENDS=		java/javaPathHelper \
			lang/jruby \
			shells/bash

NO_TEST=		Yes

LS_BASE=		${PREFIX}/logstash/

JFFI_ARCH=		${MACHINE_ARCH:S/amd64/x86_64/}-OpenBSD
SUBST_VARS=		JFFI_ARCH

# with NO_BUILD defined JAVA_HOME won't get set, so this is as close as we'll
# get to "building". Wipe the jruby vendor directory as we'll later link to
# the system jruby.
do-build:
	-rm -r ${WRKSRC}/vendor/jruby/lib/jni
	${SUBST_CMD} ${WRKSRC}/bin/logstash.lib.sh
	@# apply hammer to fixup weird modes
	find ${WRKSRC}/vendor/ -type f -exec chmod 0644 {} \;
	find ${WRKSRC} -name '*.orig' -print0 | xargs -0r rm
	chmod 755 ${WRKSRC}/vendor/jruby/bin/*

do-install:
	${INSTALL_DATA_DIR} ${LS_BASE}/{bin,lib,vendor}/
	${INSTALL_DATA} ${WRKSRC}/Gemfile* ${LS_BASE}
.for b in logstash logstash.lib.sh plugin
	${INSTALL_SCRIPT} ${WRKSRC}/bin/$b ${LS_BASE}/bin/
.endfor
	cd ${WRKSRC} && cp -R lib vendor ${LS_BASE}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/logstash/
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/logstash.conf \
		${PREFIX}/share/examples/logstash/logstash.conf

.include <bsd.port.mk>
