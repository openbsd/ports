# $OpenBSD: Makefile,v 1.20 2011/04/18 21:25:20 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	pure-Java implementation of the Ruby language

V =		1.6.1
DISTNAME =	jruby-src-${V}
PKGNAME =	jruby-${V}
CATEGORIES =	lang lang/ruby
DISTFILES =	${DISTNAME}.tar.gz \
		wmeissner-jffi-1.0.2-0-ge0d10e9.tar.gz:0

HOMEPAGE =	http://www.jruby.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# CPL/GPLv2/LGPLv2.1/GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://jruby.org.s3.amazonaws.com/downloads/${V}/
MASTER_SITES0 =	http://distfiles.bsdfrog.org/

MODULES =	java
MODJAVA_VER =	1.7+
MODJAVA_JRERUN = Yes
USE_GMAKE =	Yes

WANTLIB =	c m stdc++

BUILD_DEPENDS =	devel/apache-ant \
		${RUN_DEPENDS}
RUN_DEPENDS =	java/javaPathHelper \
		shells/bash

MAKE_ENV =	JAVA_HOME=${JAVA_HOME} ANT_OPTS="-Xms384m -Xmx384m" \
			MAKE=${MAKE_PROGRAM}
			
JRUBY_HOME =	${PREFIX}/jruby

WRKDIST =	${WRKDIR}/jruby-${V}
ANT_CMD =	${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant
JFFI_HOME =	${WRKDIST}/jffi
JFFI_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}-OpenBSD
FFI_ARCH =	${JFFI_ARCH:L}
RAKE_V =	0.8.7
SUBST_VARS =	JRUBY_HOME JFFI_ARCH FFI_ARCH RAKE_V

post-extract:
	mv ${WRKDIR}/wmeissner-jffi-e0d10e9 ${JFFI_HOME}

pre-configure:
	# SUBST_CMD causes problems because $\( -> $(
	perl -pi -e 's,\$$\{LOCALBASE\},'${LOCALBASE}',' ${WRKSRC}/lib/ruby/site_ruby/shared/mkmf.rb
	rm ${WRKSRC}/lib/ruby/site_ruby/shared/mkmf.rb.orig

do-build:
	cd ${JFFI_HOME} && ${ANT_CMD} jar test && \
		cp dist/jffi-*-OpenBSD.jar ${WRKDIST}/build_lib
	cd ${WRKSRC} && ${ANT_CMD}
	cd ${WRKSRC}/cext/src && \
		${SETENV} ${MAKE_ENV} \
		PATH=$$PATH:/usr/local/jdk-1.7.0/bin \
		${MAKE_PROGRAM}
	cd ${WRKSRC}/tool/nailgun && \
		${SETENV} ${CONFIGURE_ENV} ./configure && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
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
	${INSTALL_DATA_DIR} ${JRUBY_HOME}
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/bin
	for file in ast gem jgem jirb jirb_swing jruby jrubyc rdoc ri testrb; \
	  do ${INSTALL_SCRIPT} ${WRKBUILD}/bin/$$file ${JRUBY_HOME}/bin/$$file; \
	done
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/lib
	cd ${WRKBUILD}/lib && tar -cf - * | \
		tar -C ${JRUBY_HOME}/lib -xf -
	cd ${WRKBUILD} && tar -cf - share | \
		tar -C ${JRUBY_HOME} -xf -
	${SET_ENV} ${MAKE_ENV} PATH=${JRUBY_HOME}/bin:$$PATH HOME=${WRKBUILD} \
		make=${LOCALBASE}/bin/gmake \
		${PREFIX}/jruby/bin/jruby ${PREFIX}/jruby/bin/gem install \
		--local --no-rdoc --no-ri ${WRKBUILD}/build_lib/rake*.gem
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/tool/nailgun
	${INSTALL_PROGRAM} ${WRKSRC}/tool/nailgun/ng ${JRUBY_HOME}/tool/nailgun
	chown -R ${SHAREOWN}:${SHAREGRP} ${JRUBY_HOME}/lib ${JRUBY_HOME}/share \
		${JRUBY_HOME}/tool

do-regress:
	cd ${WRKSRC} && ${ANT_CMD} test
	cd ${WRKSRC} && ${ANT_CMD} spec

.include <bsd.port.mk>
