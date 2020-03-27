# $OpenBSD: Makefile,v 1.86 2020/03/27 15:04:03 jeremy Exp $

# Runtime failures on i386 in IO#pos and IO#rewind
ONLY_FOR_ARCHS = amd64

COMMENT =	pure-Java implementation of the Ruby language

V =		9.2.11.1
DISTNAME =	jruby-dist-${V}-bin
PKGNAME =	jruby-${V}
CATEGORIES =	lang lang/ruby
DISTFILES =	${DISTNAME}.tar.gz \
		jffi-1.2.18.tar.gz:0 \
		${JRUBY_LAUNCHER_GEM}:1

HOMEPAGE =	http://www.jruby.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# EPLv1/GPLv2/LGPLv2.1/Ruby/MIT/BSD/Apache/CPL
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://repo1.maven.org/maven2/org/jruby/jruby-dist/${V}/
MASTER_SITES0 =	https://filedump.se.rit.edu/pub/distfiles/
MASTER_SITES1 =	${MASTER_SITE_RUBYGEMS}

MODULES =	java
MODJAVA_VER =	1.8+
MODJAVA_BUILD =	ant
USE_GMAKE =	Yes

WANTLIB =	c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS = shells/bash
RUN_DEPENDS =	java/javaPathHelper

JRUBY_HOME =	${PREFIX}/jruby

WRKDIST =	${WRKDIR}/jruby-${V}
JFFI_HOME =	${WRKDIST}/jffi
JFFI_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}-OpenBSD
FFI_ARCH =	${JFFI_ARCH:L}
JRUBY_LAUNCHER_GEM = jruby-launcher-1.1.9-java.gem
SUBST_VARS =	JRUBY_HOME JFFI_ARCH FFI_ARCH RAKE_V RDOC_V JAVA_HOME

MODJAVA_BUILD_DIR = ${JFFI_HOME}
MODJAVA_BUILD_TARGET_NAME = jar

post-extract:
	mv ${WRKDIR}/jffi-jffi* ${JFFI_HOME}
	# Unpack the jruby-launcher gem, since it needs to be patched
	cd ${WRKSRC} && mkdir jruby-launcher \
		&& cd jruby-launcher && tar zxf ../../data.tar.gz \
		&& rm -f ../../data.tar.gz

do-configure:
	${SUBST_CMD} ${WRKSRC}/jruby-launcher/jrubyexe.cpp \
		${WRKSRC}/jruby-launcher/unixlauncher.cpp
	cd ${WRKSRC}/jruby-launcher/ && ${SET_ENV} ${MAKE_ENV} \
		../bin/jruby extconf.rb
	perl -pi -e '$$. == 1 && s|^.*env j?ruby.*$$|\#!${LOCALBASE}/bin/jruby|;' \
                -e '$$. == 1 && s|^.*bin/j?ruby.*$$|\#!${LOCALBASE}/bin/jruby|;' \
                -e 'close ARGV if eof;' ${WRKSRC}/bin/!(*.*)

do-build:
	${MODJAVA_BUILD_TARGET}
	rm -rf ${WRKSRC}/lib/jni
	mkdir -p ${WRKSRC}/lib/jni/${JFFI_ARCH}
	cp ${JFFI_HOME}/build/jni/libjffi-1.2.so \
		${WRKSRC}/lib/jni/${JFFI_ARCH}
	cd ${WRKSRC}/lib/ruby/stdlib/ffi/platform && \
		rm -r !(${FFI_ARCH}|*.ffi)
	cd ${WRKSRC}/jruby-launcher/ && CXX=${CXX} gmake && mv jruby ../bin

do-install:
	ln -s ${TRUEPREFIX}/jruby/bin/jruby ${PREFIX}/bin/jruby
	${INSTALL_DATA_DIR} ${JRUBY_HOME}
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/bin
	for file in ast gem jgem jirb jirb_swing jruby rake rdoc ri testrb; \
	  do ${INSTALL_SCRIPT} ${WRKBUILD}/bin/$$file ${JRUBY_HOME}/bin/$$file; \
	done
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/lib
	cd ${WRKBUILD}/lib && tar -cf - * | \
		tar -C ${JRUBY_HOME}/lib -xf -
	mkdir -p ${JRUBY_HOME}/lib/ruby/{1.8,1.9,2.0}/site_ruby
	find ${JRUBY_HOME}/lib \( -name '*.orig' -o -name '*.beforesubst' \) \
		-delete
	mv ${JRUBY_HOME}/lib/ruby/gems/{shared,1.8}
	ln -s 1.8 ${JRUBY_HOME}/lib/ruby/gems/shared
	chown -R ${SHAREOWN}:${SHAREGRP} ${JRUBY_HOME}/lib

# JRuby doesn't ship tests in the binary distribution
# Try running the database/ruby-sequel,jruby tests after an update
NO_TEST =	Yes

.include <bsd.port.mk>
