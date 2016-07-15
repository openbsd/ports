# $OpenBSD: Makefile,v 1.8 2016/07/15 11:11:41 jasper Exp $

COMMENT=		tool for managing events and logs

V=			2.3.4
DISTNAME=		logstash-$V
PKGNAME=		logstash-${V:S/-/./}
EPOCH=			0

CATEGORIES=		sysutils

HOMEPAGE=		https://www.elastic.co/products/logstash

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

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
	-rm -rf ${WRKSRC}/vendor/bundle/jruby/1.9/gems/childprocess-0.5.9/lib/childprocess/unix/platform
	-rm -r ${WRKSRC}/vendor/jruby/lib/jni
	-rm -rf ${WRKSRC}/vendor/jruby/lib/ruby/shared/ffi/platform/i386-{darwin,freebsd,linux,solaris,windows}
	-rm -rf ${WRKSRC}/vendor/jruby/lib/ruby/shared/ffi/platform/{i486-gnu,mips*}
	-rm -rf ${WRKSRC}/vendor/jruby/lib/ruby/shared/ffi/platform/powerpc-{aix,darwin,linux}
	-rm -rf ${WRKSRC}/vendor/jruby/lib/ruby/shared/ffi/platform/{ppc*,s390*,sparc*}
	-rm -rf ${WRKSRC}/vendor/jruby/lib/ruby/shared/ffi/platform/x86_64-{darwin,freebsd,linux,solaris,windows}
	${SUBST_CMD} ${WRKSRC}/bin/logstash.lib.sh
	@# apply hammer to fixup weird modes
	find ${WRKSRC}/vendor/ -type f -exec chmod 0644 {} \;
	find ${WRKSRC} -name '*.orig' -print0 | xargs -0r rm
	chmod 755 ${WRKSRC}/vendor/jruby/bin/*

do-install:
	${INSTALL_DATA_DIR} ${LS_BASE}/{bin,lib,vendor}/
	${INSTALL_DATA} ${WRKSRC}/Gemfile* ${LS_BASE}
.for b in logstash logstash-plugin logstash.lib.sh plugin
	${INSTALL_SCRIPT} ${WRKSRC}/bin/$b ${LS_BASE}/bin/
.endfor
	cd ${WRKSRC} && cp -R lib vendor ${LS_BASE}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/logstash/
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/logstash.conf \
		${PREFIX}/share/examples/logstash/logstash.conf

.include <bsd.port.mk>
