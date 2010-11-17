# $OpenBSD: Makefile,v 1.12 2010/11/17 08:05:17 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	pure-Java implementation of the Ruby language

V =		1.5.3
DISTNAME =	jruby-src-${V}
PKGNAME =	jruby-${V}
REVISION =	0
CATEGORIES =	lang lang/ruby
DISTFILES =	${DISTNAME}.tar.gz \
		wmeissner-jffi-1.0.2-0-ge0d10e9.tar.gz:0 \
		jruby-${V}-ffi-${MACHINE_ARCH}.tar.gz:0

HOMEPAGE =	http://www.jruby.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# CPL/GPLv2/LGPLv2.1/GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://jruby.org.s3.amazonaws.com/downloads/$V/
MASTER_SITES0 =	http://www.bsdfrog.org/OpenBSD/distfiles/

MODULES =	java
MODJAVA_VER =	1.7+
MODJAVA_JRERUN = Yes
USE_GMAKE =	Yes

WANTLIB =	c

BUILD_DEPENDS =	devel/apache-ant \
		shells/bash
RUN_DEPENDS =	java/javaPathHelper \
		shells/bash

MAKE_ENV =	JAVA_HOME=${JAVA_HOME} ANT_OPTS="-Xms256m -Xmx256m"
JRUBY_HOME =	${PREFIX}/jruby

WRKDIST =	${WRKDIR}/jruby-${V}
ANT_CMD =	${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant
JFFI_HOME =	${WRKDIST}/jffi
JFFI_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}-OpenBSD
FFI_ARCH=	${JFFI_ARCH:L}
SUBST_VARS =	JRUBY_HOME JFFI_ARCH FFI_ARCH

post-extract:
	mv ${WRKDIR}/wmeissner-jffi-e0d10e9 ${JFFI_HOME}

do-build:
	cd ${JFFI_HOME} && ${ANT_CMD} jar test && \
		cp dist/jffi-*-OpenBSD.jar ${WRKDIST}/build_lib
	@cd ${WRKSRC} && rm \
	  src/org/jruby/runtime/invokedynamic/InvokeDynamicSupport.java
	@cd ${WRKSRC} && ${ANT_CMD}
	@cd ${WRKSRC}/tool/nailgun && \
		${SETENV} ${CONFIGURE_ENV} ./configure && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}

post-build:
	@${SUBST_CMD} ${WRKBUILD}/bin/jruby
	@cd ${WRKSRC}/lib/native && rm -r !(*OpenBSD*)
	@cd ${WRKSRC}/lib/ruby/site_ruby/shared/ffi/platform && \
	  rm -r !(${FFI_ARCH}|*.ffi)

do-install:
	${INSTALL_DATA_DIR} ${JRUBY_HOME}
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/bin
	for file in jgem jirb jirb_swing jruby jrubyc; do \
	  ${INSTALL_SCRIPT} ${WRKBUILD}/bin/$$file ${JRUBY_HOME}/bin/$$file; \
	done
	for file in ast rdoc ri; do \
	  ${INSTALL_SCRIPT} ${WRKBUILD}/bin/$$file ${JRUBY_HOME}/bin/j$$file; \
	done
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/lib
	cd ${WRKBUILD}/lib && tar -cf - * | \
		tar -C ${JRUBY_HOME}/lib -xf -
	cd ${WRKBUILD} && tar -cf - share | \
		tar -C ${JRUBY_HOME} -xf -
	${SET_ENV} ${MAKE_ENV} PATH=${JRUBY_HOME}/bin:$$PATH \
		${PREFIX}/jruby/bin/jgem install \
		${WRKBUILD}/build_lib/{rake,rspec}*.gem
	for file in autospec rake spec; do \
	  ln ${JRUBY_HOME}/bin/$$file ${JRUBY_HOME}/bin/j$$file; \
	done
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/tool/nailgun
	${INSTALL_PROGRAM} ${WRKSRC}/tool/nailgun/ng ${JRUBY_HOME}/tool/nailgun
	chown -R ${SHAREOWN}:${SHAREGRP} ${JRUBY_HOME}/lib ${JRUBY_HOME}/share \
		${JRUBY_HOME}/tool

do-regress:
	cd ${WRKSRC} && ${ANT_CMD} test
	cd ${WRKSRC} && ${ANT_CMD} spec

.include <bsd.port.mk>
