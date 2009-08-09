# $OpenBSD: Makefile,v 1.8 2009/08/09 11:18:59 bernd Exp $

SHARED_ONLY =	Yes

COMMENT =	pure-Java implementation of the Ruby language

V =		1.3.1
DISTNAME =	jruby-src-${V}
PKGNAME =	jruby-${V}
CATEGORIES =	lang lang/ruby

HOMEPAGE =	http://www.jruby.org/

MAINTAINER =	Bernd Ahlers <bernd@openbsd.org>

# CPL/GPL/LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://dist.codehaus.org/jruby/${V}/

MODULES =	java
MODJAVA_VER =	1.7+
MODJAVA_JRERUN = Yes

WANTLIB =	c

BUILD_DEPENDS =	::devel/apache-ant
RUN_DEPENDS =	::java/javaPathHelper \
		::shells/bash

MAKE_ENV =	JAVA_HOME=${JAVA_HOME} ANT_OPTS="-Xmx64m -XX:MaxPermSize=64m"
JRUBY_HOME =	${PREFIX}/jruby

WRKDIST =	${WRKDIR}/jruby-${V}
SUBST_VARS =	JRUBY_HOME

# disable regress tests for now. i have to figure out how to run them
# properly
NO_REGRESS =	Yes

post-extract:
	@cd ${WRKSRC}/lib/native && ls -1 | fgrep -v openbsd | xargs -r rm -rf
	@cd ${WRKSRC}/lib/ruby/1.8/ffi/platform && \
		ls -1 | fgrep -v openbsd | xargs -r rm -rf

do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant
	@cd ${WRKSRC}/tool/nailgun && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}

post-build:
	@${SUBST_CMD} ${WRKBUILD}/bin/jruby

do-install:
	${INSTALL_DATA_DIR} ${JRUBY_HOME}
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/autospec ${JRUBY_HOME}/bin/jautospec
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/jgem ${JRUBY_HOME}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/jirb ${JRUBY_HOME}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/jirb_swing ${JRUBY_HOME}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/jruby ${JRUBY_HOME}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/jrubyc ${JRUBY_HOME}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/rake ${JRUBY_HOME}/bin/jrake
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/rdoc ${JRUBY_HOME}/bin/jrdoc
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/ri ${JRUBY_HOME}/bin/jri
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/spec ${JRUBY_HOME}/bin/jspec
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/lib
	cd ${WRKBUILD}/lib && tar -cf - * | \
		tar -C ${JRUBY_HOME}/lib -xf -
	cd ${WRKBUILD} && tar -cf - share | \
		tar -C ${JRUBY_HOME} -xf -
	${INSTALL_DATA_DIR} ${JRUBY_HOME}/tool/nailgun
	${INSTALL_PROGRAM} ${WRKSRC}/tool/nailgun/ng ${JRUBY_HOME}/tool/nailgun
	chown -R ${SHAREOWN}:${SHAREGRP} ${JRUBY_HOME}/lib ${JRUBY_HOME}/share \
		${JRUBY_HOME}/tool

.include <bsd.port.mk>
