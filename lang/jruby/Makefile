# $OpenBSD: Makefile,v 1.43 2014/06/27 15:26:02 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	pure-Java implementation of the Ruby language

V =		1.7.13
DISTNAME =	jruby-bin-${V}
PKGNAME =	jruby-${V}
CATEGORIES =	lang lang/ruby
DISTFILES =	${DISTNAME}.tar.gz \
		jnr-jffi-1.2.2-0-g4c196bb.tar.gz:0 \
		jnr-posix.20130822.tar.gz:1 \
		${JRUBY_LAUNCHER_GEM}:2

HOMEPAGE =	http://www.jruby.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# EPLv1/GPLv2/LGPLv2.1/Ruby/MIT/BSD/Apache/CPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://jruby.org.s3.amazonaws.com/downloads/${V}/
MASTER_SITES0 =	http://www.distfiles.nl/
MASTER_SITES1 =	http://spacehopper.org/mirrors/
MASTER_SITES2 =	${MASTER_SITE_RUBYGEMS}

MODULES =	java
MODJAVA_VER =	1.7+
MODJAVA_JRERUN = Yes
USE_GMAKE =	Yes

WANTLIB =	c m pthread stdc++

BUILD_DEPENDS =	archivers/unzip \
		archivers/zip \
		devel/apache-ant \
		shells/bash \
		${RUN_DEPENDS}
RUN_DEPENDS =	java/javaPathHelper

MAKE_ENV =	JAVA_HOME=${JAVA_HOME} MAKE=${MAKE_PROGRAM}

JRUBY_HOME =	${PREFIX}/jruby

WRKDIST =	${WRKDIR}/jruby-${V}
ANT_CMD =	${SETENV} ${MAKE_ENV} PATH=${JAVA_HOME}/bin:${PATH} \
			${LOCALBASE}/bin/ant
JFFI_HOME =	${WRKDIST}/jffi
JFFI_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}-OpenBSD
FFI_ARCH =	${JFFI_ARCH:L}
RAKE_V =	10.1.0
RDOC_V =	4.0.1
JRUBY_LAUNCHER_GEM = jruby-launcher-1.0.19-java.gem
SUBST_VARS =	JRUBY_HOME JFFI_ARCH FFI_ARCH RAKE_V RDOC_V

post-extract:
	mv ${WRKDIR}/jnr-jffi* ${JFFI_HOME}
	cd ${WRKSRC} && unzip ${WRKDIR}/jnr-posix.jar
	# Unpack the jruby-launcher gem, since it needs to be patched
	cd ${WRKSRC} && mkdir jruby-launcher \
		&& cd jruby-launcher && tar zxf ../../data.tar.gz \
		&& rm -f ../../data.tar.gz
	cp ${WRKSRC}/lib/ruby/gems/shared/gems/*/bin/* ${WRKSRC}/bin/

do-configure:
	${SUBST_CMD} ${WRKSRC}/jruby-launcher/jrubyexe.cpp \
		${WRKSRC}/jruby-launcher/unixlauncher.cpp
	cd ${WRKSRC}/jruby-launcher/ && ${SET_ENV} ${MAKE_ENV} \
		../bin/jruby extconf.rb
	perl -pi -e '$$. == 1 && s|^.*env j?ruby.*$$|\#!${LOCALBASE}/bin/jruby|;' \
                -e '$$. == 1 && s|^.*bin/j?ruby.*$$|\#!${LOCALBASE}/bin/jruby|;' \
                -e 'close ARGV if eof;' ${WRKSRC}/bin/!(*.*)

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/zip -r lib/jruby.jar jnr/posix/
	cd ${JFFI_HOME} && ${ANT_CMD} jar
	rm -rf ${WRKSRC}/lib/jni
	mkdir -p ${WRKSRC}/lib/jni/${JFFI_ARCH}
	cp ${JFFI_HOME}/build/jni/libjffi-1.2.so \
		${WRKSRC}/lib/jni/${JFFI_ARCH}
	cd ${WRKSRC}/lib/ruby/shared/ffi/platform && \
		rm -r !(${FFI_ARCH}|*.ffi)
	cd ${WRKSRC}/jruby-launcher/ && gmake && mv jruby ../bin

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
	find ${JRUBY_HOME}/lib -name '*.orig' -print0 | xargs -0r rm
	find ${JRUBY_HOME}/lib -name '*.beforesubst' -print0 | xargs -0r rm
	mv ${JRUBY_HOME}/lib/ruby/gems/{shared,1.8}
	ln -s 1.8 ${JRUBY_HOME}/lib/ruby/gems/shared
	chown -R ${SHAREOWN}:${SHAREGRP} ${JRUBY_HOME}/lib

# JRuby doesn't ship tests in the binary distribution
# Try running the database/ruby-sequel,jruby tests after an update
NO_TEST =	Yes

.include <bsd.port.mk>
