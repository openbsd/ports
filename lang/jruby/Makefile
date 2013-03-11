# $OpenBSD: Makefile,v 1.35 2013/03/11 11:20:27 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	pure-Java implementation of the Ruby language

V =		1.6.8
DISTNAME =	jruby-src-${V}
PKGNAME =	jruby-${V}
CATEGORIES =	lang lang/ruby
DISTFILES =	${DISTNAME}.tar.gz \
		wmeissner-jffi-1.0.2-0-ge0d10e9.tar.gz:0

HOMEPAGE =	http://www.jruby.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# CPL/GPLv2/LGPLv2.1/GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread stdc++

MASTER_SITES =	http://jruby.org.s3.amazonaws.com/downloads/${V}/
MASTER_SITES0 =	http://distfiles.bsdfrog.org/

MODULES =	java
MODJAVA_VER =	1.7+
MODJAVA_JRERUN = Yes
USE_GMAKE =	Yes

BUILD_DEPENDS =	devel/apache-ant \
		shells/bash \
		${RUN_DEPENDS}
RUN_DEPENDS =	java/javaPathHelper

MAKE_ENV =	JAVA_HOME=${JAVA_HOME} ANT_OPTS="-Xms434m -Xmx434m" \
			MAKE=${MAKE_PROGRAM}
			
JRUBY_HOME =	${PREFIX}/jruby

WRKDIST =	${WRKDIR}/jruby-${V}
ANT_CMD =	${SETENV} ${MAKE_ENV} PATH=${JAVA_HOME}/bin:${PATH} \
			${LOCALBASE}/bin/ant
JFFI_HOME =	${WRKDIST}/jffi
JFFI_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}-OpenBSD
FFI_ARCH =	${JFFI_ARCH:L}
RAKE_V =	0.8.7
JRUBY_LAUNCHER_V =	1.0.8
SUBST_VARS =	JRUBY_HOME JFFI_ARCH FFI_ARCH RAKE_V JRUBY_LAUNCHER_V

post-extract:
	mv ${WRKDIR}/wmeissner-jffi-e0d10e9 ${JFFI_HOME}
	# Unpack the jruby-launcher gem, since it needs to be patched
	cp ${WRKSRC}/build_lib/jruby-launcher-${JRUBY_LAUNCHER_V}-java{,-orig}.gem
	cd ${WRKSRC} && mkdir jruby-launcher && tar xf \
		build_lib/jruby-launcher-${JRUBY_LAUNCHER_V}-java.gem \
		&& cd jruby-launcher && tar zxf ../data.tar.gz

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/ruby/site_ruby/shared/mkmf.rb \
		${WRKSRC}/jruby-launcher/jrubyexe.cpp \
		${WRKSRC}/jruby-launcher/unixlauncher.cpp
	# Rebuild the jruby-launcher gem
	cd ${WRKSRC}/jruby-launcher && find . -type f \! -name '*.orig'  -print | \
		pax -wz -s '/^\.\///' -f ../data.tar.gz
	cd ${WRKSRC} && tar cf \
		build_lib/jruby-launcher-${JRUBY_LAUNCHER_V}-java.gem \
		data.tar.gz metadata.gz
	rm ${WRKSRC}/lib/ruby/site_ruby/shared/mkmf.rb.orig

do-build:
	cd ${JFFI_HOME} && ${ANT_CMD} jar test && \
		cp dist/jffi-*-OpenBSD.jar ${WRKDIST}/build_lib
	cd ${WRKSRC} && ${ANT_CMD}
	cd ${WRKSRC}/cext/src && \
		${SETENV} ${MAKE_ENV} \
		PATH=$$PATH:/usr/local/jdk-1.7.0/bin \
		${MAKE_PROGRAM}
	cd ${WRKSRC} && ${ANT_CMD} jar-complete

post-build:
	${SUBST_CMD} ${WRKSRC}/bin/jruby
	rm ${WRKSRC}/lib/jruby.jar
	cd ${WRKSRC}/lib/native && rm -r !(${JFFI_ARCH}*)
	cd ${WRKSRC}/cext/src/ && tar -cf - include | \
		tar -C ${WRKSRC}/lib/native -xf -
	cd ${WRKSRC}/lib/ruby/site_ruby/shared/ffi/platform && \
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
	cd ${WRKBUILD} && rm -rf share/ri/1.8/system/* share/ri.jar
	cd ${WRKBUILD} && tar -cf - share | \
		tar -C ${JRUBY_HOME} -xf -
	${SET_ENV} ${MAKE_ENV} PATH=${JRUBY_HOME}/bin:$$PATH HOME=${WRKBUILD} \
		make=${LOCALBASE}/bin/gmake ${PREFIX}/jruby/bin/jruby \
		${PREFIX}/jruby/bin/gem install --local --no-rdoc --no-ri \
		${WRKBUILD}/build_lib/rake-${RAKE_V}.gem \
		${WRKBUILD}/build_lib/jruby-launcher-${JRUBY_LAUNCHER_V}-java.gem 
	mkdir -p ${JRUBY_HOME}/lib/ruby/site_ruby/1.8/java
	chown -R ${SHAREOWN}:${SHAREGRP} ${JRUBY_HOME}/lib ${JRUBY_HOME}/share

ANT_TEST_CMD =	${SETENV} ${MAKE_ENV} HOME=${WRKBUILD} \
				PATH=${JAVA_HOME}/bin:${PATH} \
				${LOCALBASE}/bin/ant
# Expected test failures:
#   4 Failures in JRubyTestSuite
#   1 Failure in MainTestSuite
#   1 Failure in MRITestSuite
# spec task disabled by default as it needs network access to download
# the latest specs.
do-test:
	rm -f ${WRKSRC}/lib/jruby-complete.jar
	-cd ${WRKSRC} && ${ANT_TEST_CMD} test
	#cd ${WRKSRC} && ${ANT_TEST_CMD} spec

.include <bsd.port.mk>
