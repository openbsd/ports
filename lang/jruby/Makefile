# $OpenBSD: Makefile,v 1.38 2013/08/22 21:35:57 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	pure-Java implementation of the Ruby language

V =		1.7.4
REVISION =	0
DISTNAME =	jruby-src-${V}
PKGNAME =	jruby-${V}
CATEGORIES =	lang lang/ruby
DISTFILES =	${DISTNAME}.tar.gz \
		jnr-jffi-1.2.2-0-g4c196bb.tar.gz:0 \
		jnr-posix.20130822.tar.gz:1

HOMEPAGE =	http://www.jruby.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# CPL/GPLv2/LGPLv2.1/GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://jruby.org.s3.amazonaws.com/downloads/${V}/
MASTER_SITES0 =	http://www.distfiles.nl/
MASTER_SITES1 =	http://spacehopper.org/mirrors/

MODULES =	java
MODJAVA_VER =	1.7+
MODJAVA_JRERUN = Yes
USE_GMAKE =	Yes

WANTLIB =	c m pthread stdc++

BUILD_DEPENDS =	devel/apache-ant \
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
RAKE_V =	10.0.3
JRUBY_LAUNCHER_V =	1.0.15
SUBST_VARS =	JRUBY_HOME JFFI_ARCH FFI_ARCH RAKE_V JRUBY_LAUNCHER_V

post-extract:
	mv ${WRKDIR}/jnr-jffi* ${JFFI_HOME}
	mv ${WRKDIR}/jnr-posix.jar ${WRKSRC}/build_lib/
	# Unpack the jruby-launcher gem, since it needs to be patched
	cp ${WRKSRC}/build_lib/jruby-launcher-${JRUBY_LAUNCHER_V}-java{,-orig}.gem
	cd ${WRKSRC} && mkdir jruby-launcher && tar xf \
		build_lib/jruby-launcher-${JRUBY_LAUNCHER_V}-java.gem \
		&& cd jruby-launcher && tar zxf ../data.tar.gz

pre-configure:
	${SUBST_CMD} ${WRKSRC}/jruby-launcher/jrubyexe.cpp \
		${WRKSRC}/jruby-launcher/unixlauncher.cpp
	# Rebuild the jruby-launcher gem
	cd ${WRKSRC}/jruby-launcher && find . -type f \! -name '*.orig'  -print | \
		pax -wz -s '/^\.\///' -f ../data.tar.gz
	cd ${WRKSRC} && tar cf \
		build_lib/jruby-launcher-${JRUBY_LAUNCHER_V}-java.gem \
		data.tar.gz metadata.gz

do-build:
	cd ${JFFI_HOME} && ${ANT_CMD} jar test && \
		cp dist/jffi-*-OpenBSD.jar ${WRKDIST}/build_lib
	cd ${WRKSRC} && ${ANT_CMD}

post-build:
	${SUBST_CMD} ${WRKSRC}/bin/jruby
	cd ${WRKSRC}/lib/native && rm -r !(${JFFI_ARCH}*)
	cd ${WRKSRC}/lib/ruby/shared/ffi/platform && \
	  rm -r !(${FFI_ARCH}|*.ffi)

do-install:
	ln -s ${TRUEPREFIX}/jruby/bin/jruby ${PREFIX}/bin/jruby
	${INSTALL_DATA_DIR} ${JRUBY_HOME}
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/bin
	for file in ast gem jgem jirb jirb_swing jruby jrubyc rdoc ri testrb; \
	  do ${INSTALL_SCRIPT} ${WRKBUILD}/bin/$$file ${JRUBY_HOME}/bin/$$file; \
	done
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/lib
	cd ${WRKBUILD}/lib && tar -cf - * | \
		tar -C ${JRUBY_HOME}/lib -xf -
	mkdir -p ${JRUBY_HOME}/lib/ruby/{1.8,1.9,2.0}/site_ruby
	${SET_ENV} ${MAKE_ENV} PATH=${JRUBY_HOME}/bin:$$PATH HOME=${WRKBUILD} \
		make=${LOCALBASE}/bin/gmake ${PREFIX}/jruby/bin/jruby \
		${PREFIX}/jruby/bin/gem install --local --no-rdoc --no-ri \
		${WRKBUILD}/build_lib/rake-${RAKE_V}.gem \
		${WRKBUILD}/build_lib/jruby-launcher-${JRUBY_LAUNCHER_V}-java.gem 
	find ${JRUBY_HOME}/lib -name '*.orig' -print0 | xargs -0r rm
	find ${JRUBY_HOME}/lib -name '*.beforesubst' -print0 | xargs -0r rm
	mv ${JRUBY_HOME}/lib/ruby/gems/{shared,1.8}
	ln -s 1.8 ${JRUBY_HOME}/lib/ruby/gems/shared
	chown -R ${SHAREOWN}:${SHAREGRP} ${JRUBY_HOME}/lib

ANT_TEST_CMD =	${SETENV} ${MAKE_ENV} HOME=${WRKBUILD} \
				PATH=${JAVA_HOME}/bin:${PATH} \
				ANT_OPTS="-Xms512m -Xmx512m" \
				${LOCALBASE}/bin/ant
# Expected test failures:
#   4 Failures in JRubyTestSuite
#   1 Failure in MainTestSuite
#   1 Failure in MRITestSuite
# spec task disabled by default as it needs network access to download
# the latest specs.
do-test:
	-cd ${WRKSRC} && ${ANT_TEST_CMD} test
	#cd ${WRKSRC} && ${ANT_TEST_CMD} spec

.include <bsd.port.mk>
